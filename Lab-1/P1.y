%{
    #include <iostream>
    #include <string>
    #include <unordered_map>
    #include <utility>
    #include <vector>
    #include <sstream>
    #include <regex>
    #include <cstring>

    int yylex(void);
    void yyerror(char*);

    std::vector<std::unordered_map<std::string, std::pair<int, std::string>>> macro_identifiers(2);
    int count_tabs = 0;
    const std::string tab = "    ";
    std::string output;

    std::vector<std::string> split_string(std::string& str, char delimiter)
    {
        std::vector<std::string> tokens;
        std::stringstream ss(str);
        std::string token;

        while(getline(ss, token, delimiter))
        {
            tokens.push_back(token);
        }

        return tokens;
    }

    void add_macro(int type, std::string identifier_m, std::string identifier_list_m, std::string expression)
    {
        auto tokens = split_string(identifier_list_m, ',');
        
        for (int i = 0; i < (int)tokens.size(); i++)
        {
            std::regex pattern(std::string("\\b") + tokens[i] + "\\b");
            expression = std::regex_replace(expression, pattern, std::string("$$") + std::to_string(i));
        }

        macro_identifiers[type][identifier_m] = {tokens.size(), expression};
    }

    std::string apply_macro(int type, std::string identifier_m, std::string expression_list_m)
    {
        auto tokens = split_string(expression_list_m, ',');
        if ((macro_identifiers[type].find(identifier_m) == macro_identifiers[type].end()) || ((int)tokens.size() != macro_identifiers[type][identifier_m].first))
        {
            yyerror("error");
        }

        std::string expression = macro_identifiers[type][identifier_m].second;
        for (int i = 0; i < (int)tokens.size(); i++)
        {
            std::regex pattern(std::string("\\$") + std::to_string(i) + "\\b");
            expression = std::regex_replace(expression, pattern, tokens[i]);
        }

        return expression;        
    }

    template<typename T, typename... Args>
    char* join_strings(T delimiter, const Args&... args) {
        std::string result;
        ((result += std::string(args) + delimiter), ...);
        if (!result.empty()) for (int i = 0; i < (std::string(delimiter)).size(); i++) result.pop_back();
        return strdup(result.c_str());
    }

    std::string required_tabs(int count)
    {
        std::string res = "";
        for (int i = 0; i < count; i++) res += tab;
        return res;
    }

    char* modify_lambda(std::string identifier_m, std::string expression_m)
    {
        std::regex pattern(identifier_m);
        expression_m = std::regex_replace(expression_m, pattern, identifier_m + "_unexpected");
        // std::cout << expression_m << '\n';
        return strdup(expression_m.c_str());
    }

%}

%union
{
    char* val;
}

%token CLASS PUBLIC STATIC VOID STRING EXTENDS RETURN INT BOOL IF ELSE WHILE THIS NEW DEFINE MAIN TRUE_ FALSE_
%token LENGTH PRINT_OUT ARROWOP AND OR NEQ LTEQ FUNCTION IMPORT_FUNCTION IMPORT
%token<val> IDENTIFIER INT_LITERAL

%type<val> import_function_ type_declaration_ main_class type_declaration class_declaration var_declaration_
%type<val> method_declaration_ class_extends_declaration  var_declaration method_declaration formal_parameter_list_ statement_  
%type<val> formal_parameter_list formal_parameter_rest_ formal_parameter formal_parameter_rest type statement block
%type<val> assignment_statement array_assignment_statement if_statement while_statement print_statement macro_statement
%type<val> expression_list_ expression lambda_expression and_expression or_expression compare_expression neq_expression
%type<val> add_expression minus_expression uminus_expression times_expression div_expression array_lookup array_length
%type<val> message_send macro_expression expression_list expression_rest_ expression_rest primary_expression array_alloc_expression
%type<val> allocation_expression not_expression bracket_expression identifier_list_ identifier_list identifier_rest_ identifier_rest

%right '!'
%right AND OR LTEQ NEQ '[' '.'
%left '+' '-'
%left '*' '/'
%nonassoc IF
%nonassoc ELSE
%nonassoc close_paren
%nonassoc ')'

%%

goal:
    import_function_ macro_definition_ main_class type_declaration_ {output = std::string(join_strings("", $1, $3, $4));}
    ;

import_function_:
    IMPORT IMPORT_FUNCTION ';' {$$ = join_strings("", "import java.util.function.Function;\n\n");}
    | {$$ = "";}
    ;

macro_definition_:
    macro_definition_ macro_definition
    |
    ;

type_declaration_:
    type_declaration_ type_declaration {$$ = join_strings("", $1, $2);}
    | {$$ = "";}                  
    ;

main_class:
    CLASS IDENTIFIER '{' {count_tabs++;} PUBLIC STATIC VOID MAIN '(' STRING '[' ']' IDENTIFIER ')' '{' {count_tabs++;} print_statement '}' '}' 
        {
            $$ = join_strings("", required_tabs(count_tabs - 2), "class ", $2, " {\n", required_tabs(count_tabs - 1), "public static void main (String[] ", $13, ") {\n", $17, required_tabs(count_tabs - 1), "}\n", required_tabs(count_tabs - 2), "}\n\n"); 
            count_tabs -= 2;
        }
    ;

type_declaration:
    class_declaration {$$ = $1;}
    | class_extends_declaration {$$ = $1;}
    ;

class_declaration:
    CLASS IDENTIFIER '{' {count_tabs++;} var_declaration_ method_declaration_ '}' 
        {
            $$ = join_strings("", required_tabs(count_tabs - 1), "class ", $2, " {\n", $5, $6, required_tabs(count_tabs - 1), "}\n\n"); 
            count_tabs--;
        }
    ;

var_declaration_:
    var_declaration_ var_declaration  {$$ = join_strings("", $1, $2);}
    | {$$ = "";}
    ;

method_declaration_:
    method_declaration_ method_declaration {$$ = join_strings("", $1, $2);}
    | {$$ = "";}
    ;

class_extends_declaration:
    CLASS IDENTIFIER EXTENDS IDENTIFIER '{' {count_tabs++;} var_declaration_ method_declaration_ '}' 
        {
            $$ = join_strings("", required_tabs(count_tabs - 1), "class ", $2, " extends ", $4, " {\n", $7, $8, required_tabs(count_tabs - 1), "}\n\n"); 
            count_tabs--;
        }
    ;

var_declaration:
    type IDENTIFIER ';' {$$ = join_strings("", required_tabs(count_tabs), $1, " ", $2, ";\n");}
    ;

method_declaration:
    PUBLIC type IDENTIFIER '(' formal_parameter_list_ ')' '{' {count_tabs++;} var_declaration_ statement_ RETURN expression ';' '}'
        {
            $$ = join_strings("", required_tabs(count_tabs - 1), "public ", $2, " ", $3, "(", $5, ")", " {\n", $9, $10, required_tabs(count_tabs), "return ", $12, ";\n", required_tabs(count_tabs - 1), "}\n\n"); 
            count_tabs--;
        }
    ;

formal_parameter_list_:
    formal_parameter_list {$$ = $1;}
    | {$$ = "";}
    ;

statement_:
    statement statement_ {$$ = join_strings("", $1, $2);}
    | {$$ = "";}
    ;

formal_parameter_list:
    formal_parameter formal_parameter_rest_ {$$ = join_strings("", $1, $2);}
    ;

formal_parameter_rest_:
    formal_parameter_rest_ formal_parameter_rest {$$ = join_strings(", ", $1, $2);}
    | {$$ = "";}
    ;

formal_parameter:
    type IDENTIFIER {$$ = join_strings(" ", $1, $2);}
    ;

formal_parameter_rest:
    ',' formal_parameter {$$ = $2;}
    ;

type:
    INT '[' ']' {$$ = "int[]";}
    | BOOL {$$ = "boolean";}
    | INT {$$ = "int";}
    | IDENTIFIER {$$ = $1;}
    | FUNCTION '<' IDENTIFIER ',' IDENTIFIER '>' {$$ = join_strings("", "Function<", $3, ",", $5, ">");}
    ;

statement:
    block {$$ = $1;}
    | assignment_statement {$$ = $1;}
    | array_assignment_statement {$$ = $1;} 
    | if_statement {$$ = $1;}
    | while_statement {$$ = $1;}
    | print_statement {$$ = $1;}
    | macro_statement {$$ = $1;}
    ;

block:
    '{' {count_tabs++;} statement_ '}' {$$ = join_strings("", "{\n", $3, required_tabs(count_tabs - 1), "}\n"); count_tabs--;}
    ;

assignment_statement:
    IDENTIFIER '=' expression ';' {$$ = join_strings("", required_tabs(count_tabs), $1, " = ", $3, ";\n");}
    ;

array_assignment_statement:
    IDENTIFIER '[' expression ']' '=' expression ';' {$$ = join_strings("", required_tabs(count_tabs), $1, "[", $3, "] = ", $6, ";\n");}
    ;

if_statement:
    IF '(' expression ')' statement %prec IF 
        {
            $$ = join_strings("", required_tabs(count_tabs), "if (", $3, ") ", (std::string($5)[0] != '{' ? "\n" : ""), $5, "\n");
        }
    | IF '(' expression ')' statement ELSE statement 
        {
            $$ = join_strings("", required_tabs(count_tabs), "if (", $3, ") ", (std::string($5)[0] != '{' ? "\n" : ""), $5, required_tabs(count_tabs), "else ", (std::string($7)[0] != '{' ? "\n" : ""), $7, "\n");
        }
    ;

while_statement:
    WHILE '(' expression ')' statement {$$ = join_strings("", required_tabs(count_tabs), "while (", $3, ") ", $5, "\n");}
    ;

print_statement:
    PRINT_OUT '(' expression ')' ';' {$$ = join_strings("", required_tabs(count_tabs), "System.out.println(", $3, ");\n");}
    ;

macro_statement:
    IDENTIFIER '(' expression_list_ ')' ';' {$$ = join_strings("", apply_macro(0, $1, $3));}
    ;

expression_list_:
    expression_list {$$ = $1;}
    |   {$$ = "";}
    ;

expression :
    or_expression {$$ = $1;}
    | and_expression {$$ = $1;}
    | compare_expression {$$ = $1;}
    | neq_expression {$$ = $1;}
    | add_expression {$$ = $1;}
    | minus_expression {$$ = $1;}
    | times_expression {$$ = $1;}
    | div_expression {$$ = $1;}
    | array_lookup {$$ = $1;}
    | array_length {$$ = $1;}
    | message_send {$$ = $1;}
    | macro_expression {$$ = $1;}
    | lambda_expression {$$ = $1;}
    | primary_expression %prec '!' {$$ = $1;}
    ;

lambda_expression:
    '(' IDENTIFIER ')' ARROWOP expression  {$$ = join_strings("", "((", $2, "_unexpected",") -> ", modify_lambda($2, $5), ")");}
    ;

and_expression:
    primary_expression AND primary_expression   {$$ = join_strings(" ", $1, "&&", $3);}
    ;

or_expression:
    primary_expression OR primary_expression {$$ = join_strings(" ", $1, "||", $3);}
    ;

compare_expression:
    primary_expression LTEQ primary_expression {$$ = join_strings(" ", $1, "<=", $3);}
    ;

neq_expression:
    primary_expression NEQ primary_expression {$$ = join_strings(" ", $1, "!=", $3);}
    ;

add_expression:
    primary_expression '+' primary_expression {$$ = join_strings(" ", $1, "+", $3);}
    ;

minus_expression:
    primary_expression '-' primary_expression {$$ = join_strings(" ", $1, "-", $3);}
    ;

times_expression:
    primary_expression '*' primary_expression {$$ = join_strings(" ", $1, "*", $3);}
    ;

div_expression:
    primary_expression '/' primary_expression {$$ = join_strings(" ", $1, "/", $3);}
    ;

array_lookup:
    primary_expression '[' primary_expression ']' {$$ = join_strings("", $1, "[", $3, "]");}
    ;

array_length:
    primary_expression '.' LENGTH {$$ = join_strings("", $1, ".length" );}
    ;

message_send:
    primary_expression '.' IDENTIFIER '(' expression_list_ ')' {$$ = join_strings("", $1, ".", $3, "(", $5, ")");}
    ;

macro_expression:
    IDENTIFIER '('expression_list_ ')' {$$ = join_strings("", apply_macro(1, $1, $3));}
    ;

expression_list:
    expression expression_rest_ {$$ = join_strings("", $1, $2);}
    ;

expression_rest_:
    expression_rest_ expression_rest {$$ = join_strings(",", $1, $2);}
    | {$$ = "";}
    ;

expression_rest:
    ',' expression {$$ = $2;} 
    ;

primary_expression:
    INT_LITERAL {$$ = $1;}
    | TRUE_ {$$ = "true";}
    | FALSE_ {$$ = "false";}
    | IDENTIFIER %prec close_paren
    | THIS {$$ = "this";}
    | uminus_expression {$$ = $1;}
    | array_alloc_expression {$$ = $1;}
    | allocation_expression {$$ = $1;}
    | not_expression {$$ = $1;}
    | bracket_expression {$$ = $1;}
    ;

uminus_expression:
    '-' primary_expression {$$ = join_strings("", "-", $2);}
    ;

array_alloc_expression:
    NEW INT '[' expression ']' {$$ = join_strings("", "new int[", $4, "]");}
    ;

allocation_expression:
    NEW IDENTIFIER '(' ')' {$$ = join_strings("", "new ", $2, "()");}
    ;

not_expression:
    '!' expression {$$ = join_strings("", "!", $2);}
    ;

bracket_expression:
    '(' expression ')' {$$ = join_strings("", "(", $2, ")");}
    ;

macro_definition:
    macro_def_expression
    | macro_def_statement
    ;

macro_def_statement:
    DEFINE IDENTIFIER '(' identifier_list_ ')' block {add_macro(0, $2, $4, $6);}
    ;

macro_def_expression:
    DEFINE IDENTIFIER '(' identifier_list_ ')' bracket_expression  {add_macro(1, $2, $4, $6);}
    ;

identifier_list_:
    identifier_list {$$ = $1;}
    | {$$ = "";}
    ;

identifier_list:
    IDENTIFIER identifier_rest_ {$$ = join_strings("", $1, $2);}
    ;

identifier_rest_:
    identifier_rest_ identifier_rest {$$ = join_strings(",", $1, $2);}
    | {$$ = "";}
    ;

identifier_rest:
    ',' IDENTIFIER {$$ = $2;}
    ;

%%

void yyerror(char* s)
{
    std::cout << "// Failed to parse macrojava code.\n";
    exit(1);
}

int main(void)
{
    yyparse();
    std::cout << output;
    return 0;
}