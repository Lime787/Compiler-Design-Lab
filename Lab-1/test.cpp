#include <bits/stdc++.h>

std::unordered_map<std::string, std::pair<int, std::string>> macro_identifiers;

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

void add_macro(std::string identifier_m, std::string identifier_list_m, std::string expression, std::string start_m, std::string end_m)
{
    auto tokens = split_string(identifier_list_m, ',');
    
    for (int i = 0; i < (int)tokens.size(); i++)
    {
        std::regex pattern(std::string("\\b") + tokens[i] + "\\b");
        expression = std::regex_replace(expression, pattern, std::string("$$") + std::to_string(i));
    }

    expression = start_m + expression + end_m;
    std::cout << expression << '\n';
    macro_identifiers[identifier_m] = {tokens.size(), expression};
}

std::string apply_macro(std::string identifier_m, std::string expression_list_m)
{
    auto tokens = split_string(expression_list_m, ',');
    if ((macro_identifiers.find(identifier_m) == macro_identifiers.end()) || ((int)tokens.size() != macro_identifiers[identifier_m].first))
    {
        //yyerror("error");
    }

    std::string expression = macro_identifiers[identifier_m].second;
    for (int i = 0; i < (int)tokens.size(); i++)
    {
        std::regex pattern(std::string("\\$") + std::to_string(i) + "\\b");
        expression = std::regex_replace(expression, pattern, tokens[i]);
    }

    return expression;        
}

template<typename T, typename... Args>
std::string join_with_space(T delimiter, const Args&... args) {
    std::string result;
    ((result += std::string(args) + delimiter), ...);
    if (!result.empty() && delimiter != "") result.pop_back();
    return result;
}

int main()
{
    add_macro("check", "a,b,c", "a+b+ c + d+ a + c+b", "(", ")");
    std::cout << apply_macro("check", "1+2+3,3*5,(11-4)") << '\n';
    std::cout << join_with_space(",", "hi", "this", "", "is","", "ved") << '\n';
    std::cout << join_with_space(",","this") << '\n';
}