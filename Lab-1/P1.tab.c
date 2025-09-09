/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "P1.y"

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
            if (!type) expression = std::regex_replace(expression, pattern, std::string("$$") + std::to_string(i));
            else expression = std::regex_replace(expression, pattern, std::string("(") + std::string("$$") + std::to_string(i) + ")");
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
            std::regex pattern(std::string("\\b") + std::string("\\$") + std::to_string(i) + "\\b");
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


#line 160 "P1.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "P1.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_CLASS = 3,                      /* CLASS  */
  YYSYMBOL_PUBLIC = 4,                     /* PUBLIC  */
  YYSYMBOL_STATIC = 5,                     /* STATIC  */
  YYSYMBOL_VOID = 6,                       /* VOID  */
  YYSYMBOL_STRING = 7,                     /* STRING  */
  YYSYMBOL_EXTENDS = 8,                    /* EXTENDS  */
  YYSYMBOL_RETURN = 9,                     /* RETURN  */
  YYSYMBOL_INT = 10,                       /* INT  */
  YYSYMBOL_BOOL = 11,                      /* BOOL  */
  YYSYMBOL_IF = 12,                        /* IF  */
  YYSYMBOL_ELSE = 13,                      /* ELSE  */
  YYSYMBOL_WHILE = 14,                     /* WHILE  */
  YYSYMBOL_THIS = 15,                      /* THIS  */
  YYSYMBOL_NEW = 16,                       /* NEW  */
  YYSYMBOL_DEFINE = 17,                    /* DEFINE  */
  YYSYMBOL_MAIN = 18,                      /* MAIN  */
  YYSYMBOL_TRUE_ = 19,                     /* TRUE_  */
  YYSYMBOL_FALSE_ = 20,                    /* FALSE_  */
  YYSYMBOL_LENGTH = 21,                    /* LENGTH  */
  YYSYMBOL_PRINT_OUT = 22,                 /* PRINT_OUT  */
  YYSYMBOL_ARROWOP = 23,                   /* ARROWOP  */
  YYSYMBOL_AND = 24,                       /* AND  */
  YYSYMBOL_OR = 25,                        /* OR  */
  YYSYMBOL_NEQ = 26,                       /* NEQ  */
  YYSYMBOL_LTEQ = 27,                      /* LTEQ  */
  YYSYMBOL_FUNCTION = 28,                  /* FUNCTION  */
  YYSYMBOL_IMPORT_FUNCTION = 29,           /* IMPORT_FUNCTION  */
  YYSYMBOL_IMPORT = 30,                    /* IMPORT  */
  YYSYMBOL_IDENTIFIER = 31,                /* IDENTIFIER  */
  YYSYMBOL_INT_LITERAL = 32,               /* INT_LITERAL  */
  YYSYMBOL_33_ = 33,                       /* '!'  */
  YYSYMBOL_34_ = 34,                       /* '['  */
  YYSYMBOL_35_ = 35,                       /* '.'  */
  YYSYMBOL_36_ = 36,                       /* '+'  */
  YYSYMBOL_37_ = 37,                       /* '-'  */
  YYSYMBOL_38_ = 38,                       /* '*'  */
  YYSYMBOL_39_ = 39,                       /* '/'  */
  YYSYMBOL_close_paren = 40,               /* close_paren  */
  YYSYMBOL_41_ = 41,                       /* ')'  */
  YYSYMBOL_42_ = 42,                       /* ';'  */
  YYSYMBOL_43_ = 43,                       /* '{'  */
  YYSYMBOL_44_ = 44,                       /* '('  */
  YYSYMBOL_45_ = 45,                       /* ']'  */
  YYSYMBOL_46_ = 46,                       /* '}'  */
  YYSYMBOL_47_ = 47,                       /* ','  */
  YYSYMBOL_48_ = 48,                       /* '<'  */
  YYSYMBOL_49_ = 49,                       /* '>'  */
  YYSYMBOL_50_ = 50,                       /* '='  */
  YYSYMBOL_YYACCEPT = 51,                  /* $accept  */
  YYSYMBOL_goal = 52,                      /* goal  */
  YYSYMBOL_import_function_ = 53,          /* import_function_  */
  YYSYMBOL_macro_definition_ = 54,         /* macro_definition_  */
  YYSYMBOL_type_declaration_ = 55,         /* type_declaration_  */
  YYSYMBOL_main_class = 56,                /* main_class  */
  YYSYMBOL_57_1 = 57,                      /* $@1  */
  YYSYMBOL_58_2 = 58,                      /* $@2  */
  YYSYMBOL_type_declaration = 59,          /* type_declaration  */
  YYSYMBOL_class_declaration = 60,         /* class_declaration  */
  YYSYMBOL_61_3 = 61,                      /* $@3  */
  YYSYMBOL_var_declaration_ = 62,          /* var_declaration_  */
  YYSYMBOL_method_declaration_ = 63,       /* method_declaration_  */
  YYSYMBOL_class_extends_declaration = 64, /* class_extends_declaration  */
  YYSYMBOL_65_4 = 65,                      /* $@4  */
  YYSYMBOL_var_declaration = 66,           /* var_declaration  */
  YYSYMBOL_method_declaration = 67,        /* method_declaration  */
  YYSYMBOL_68_5 = 68,                      /* $@5  */
  YYSYMBOL_formal_parameter_list_ = 69,    /* formal_parameter_list_  */
  YYSYMBOL_statement_ = 70,                /* statement_  */
  YYSYMBOL_formal_parameter_list = 71,     /* formal_parameter_list  */
  YYSYMBOL_formal_parameter_rest_ = 72,    /* formal_parameter_rest_  */
  YYSYMBOL_formal_parameter = 73,          /* formal_parameter  */
  YYSYMBOL_formal_parameter_rest = 74,     /* formal_parameter_rest  */
  YYSYMBOL_type = 75,                      /* type  */
  YYSYMBOL_statement = 76,                 /* statement  */
  YYSYMBOL_block = 77,                     /* block  */
  YYSYMBOL_78_6 = 78,                      /* $@6  */
  YYSYMBOL_assignment_statement = 79,      /* assignment_statement  */
  YYSYMBOL_array_assignment_statement = 80, /* array_assignment_statement  */
  YYSYMBOL_if_statement = 81,              /* if_statement  */
  YYSYMBOL_while_statement = 82,           /* while_statement  */
  YYSYMBOL_print_statement = 83,           /* print_statement  */
  YYSYMBOL_macro_statement = 84,           /* macro_statement  */
  YYSYMBOL_expression_list_ = 85,          /* expression_list_  */
  YYSYMBOL_expression = 86,                /* expression  */
  YYSYMBOL_lambda_expression = 87,         /* lambda_expression  */
  YYSYMBOL_and_expression = 88,            /* and_expression  */
  YYSYMBOL_or_expression = 89,             /* or_expression  */
  YYSYMBOL_compare_expression = 90,        /* compare_expression  */
  YYSYMBOL_neq_expression = 91,            /* neq_expression  */
  YYSYMBOL_add_expression = 92,            /* add_expression  */
  YYSYMBOL_minus_expression = 93,          /* minus_expression  */
  YYSYMBOL_times_expression = 94,          /* times_expression  */
  YYSYMBOL_div_expression = 95,            /* div_expression  */
  YYSYMBOL_array_lookup = 96,              /* array_lookup  */
  YYSYMBOL_array_length = 97,              /* array_length  */
  YYSYMBOL_message_send = 98,              /* message_send  */
  YYSYMBOL_macro_expression = 99,          /* macro_expression  */
  YYSYMBOL_expression_list = 100,          /* expression_list  */
  YYSYMBOL_expression_rest_ = 101,         /* expression_rest_  */
  YYSYMBOL_expression_rest = 102,          /* expression_rest  */
  YYSYMBOL_primary_expression = 103,       /* primary_expression  */
  YYSYMBOL_uminus_expression = 104,        /* uminus_expression  */
  YYSYMBOL_array_alloc_expression = 105,   /* array_alloc_expression  */
  YYSYMBOL_allocation_expression = 106,    /* allocation_expression  */
  YYSYMBOL_not_expression = 107,           /* not_expression  */
  YYSYMBOL_bracket_expression = 108,       /* bracket_expression  */
  YYSYMBOL_macro_definition = 109,         /* macro_definition  */
  YYSYMBOL_macro_def_statement = 110,      /* macro_def_statement  */
  YYSYMBOL_macro_def_expression = 111,     /* macro_def_expression  */
  YYSYMBOL_identifier_list_ = 112,         /* identifier_list_  */
  YYSYMBOL_identifier_list = 113,          /* identifier_list  */
  YYSYMBOL_identifier_rest_ = 114,         /* identifier_rest_  */
  YYSYMBOL_identifier_rest = 115           /* identifier_rest  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  5
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   187

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  51
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  65
/* YYNRULES -- Number of rules.  */
#define YYNRULES  112
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  224

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   288


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    33,     2,     2,     2,     2,     2,     2,
      44,    41,    38,    36,    47,    37,    35,    39,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,    42,
      48,    50,    49,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    34,     2,    45,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    43,     2,    46,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    40
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   120,   120,   124,   125,   129,   130,   134,   135,   139,
     139,   139,   147,   148,   152,   152,   160,   161,   165,   166,
     170,   170,   178,   182,   182,   190,   191,   195,   196,   200,
     204,   205,   209,   213,   217,   218,   219,   220,   221,   225,
     226,   227,   228,   229,   230,   231,   235,   235,   239,   243,
     247,   251,   258,   262,   266,   270,   271,   275,   276,   277,
     278,   279,   280,   281,   282,   283,   284,   285,   286,   287,
     288,   292,   296,   300,   304,   308,   312,   316,   320,   324,
     328,   332,   336,   340,   344,   348,   349,   353,   357,   358,
     359,   360,   361,   362,   363,   364,   365,   366,   370,   374,
     378,   382,   386,   390,   391,   395,   399,   403,   404,   408,
     412,   413,   417
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "CLASS", "PUBLIC",
  "STATIC", "VOID", "STRING", "EXTENDS", "RETURN", "INT", "BOOL", "IF",
  "ELSE", "WHILE", "THIS", "NEW", "DEFINE", "MAIN", "TRUE_", "FALSE_",
  "LENGTH", "PRINT_OUT", "ARROWOP", "AND", "OR", "NEQ", "LTEQ", "FUNCTION",
  "IMPORT_FUNCTION", "IMPORT", "IDENTIFIER", "INT_LITERAL", "'!'", "'['",
  "'.'", "'+'", "'-'", "'*'", "'/'", "close_paren", "')'", "';'", "'{'",
  "'('", "']'", "'}'", "','", "'<'", "'>'", "'='", "$accept", "goal",
  "import_function_", "macro_definition_", "type_declaration_",
  "main_class", "$@1", "$@2", "type_declaration", "class_declaration",
  "$@3", "var_declaration_", "method_declaration_",
  "class_extends_declaration", "$@4", "var_declaration",
  "method_declaration", "$@5", "formal_parameter_list_", "statement_",
  "formal_parameter_list", "formal_parameter_rest_", "formal_parameter",
  "formal_parameter_rest", "type", "statement", "block", "$@6",
  "assignment_statement", "array_assignment_statement", "if_statement",
  "while_statement", "print_statement", "macro_statement",
  "expression_list_", "expression", "lambda_expression", "and_expression",
  "or_expression", "compare_expression", "neq_expression",
  "add_expression", "minus_expression", "times_expression",
  "div_expression", "array_lookup", "array_length", "message_send",
  "macro_expression", "expression_list", "expression_rest_",
  "expression_rest", "primary_expression", "uminus_expression",
  "array_alloc_expression", "allocation_expression", "not_expression",
  "bracket_expression", "macro_definition", "macro_def_statement",
  "macro_def_expression", "identifier_list_", "identifier_list",
  "identifier_rest_", "identifier_rest", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-161)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      -8,    16,    28,  -161,   -11,  -161,    24,  -161,    30,    31,
    -161,  -161,  -161,  -161,    20,    21,    61,  -161,    35,    38,
    -161,  -161,  -161,    66,  -161,    34,  -161,    -1,    67,    29,
     -18,    40,  -161,    73,    53,  -161,  -161,    58,  -161,  -161,
      43,  -161,    69,  -161,    25,  -161,     9,  -161,  -161,    50,
    -161,    58,    77,    85,    57,  -161,  -161,  -161,  -161,  -161,
    -161,  -161,  -161,  -161,  -161,  -161,  -161,  -161,   106,  -161,
    -161,  -161,  -161,  -161,  -161,     7,    55,    59,    63,    68,
     -14,    65,    25,  -161,  -161,  -161,  -161,  -161,  -161,  -161,
      79,    71,    58,  -161,  -161,  -161,   -20,  -161,    77,    77,
      77,    77,    77,    12,    77,    77,    77,    77,  -161,    86,
    -161,    76,  -161,     0,  -161,    88,   118,    58,    58,    58,
      58,    58,    58,  -161,  -161,    58,    87,    94,  -161,  -161,
     103,  -161,  -161,  -161,  -161,    82,  -161,    92,  -161,  -161,
    -161,  -161,     7,    93,   115,     7,  -161,  -161,    95,   113,
     107,   108,   110,   109,   111,   114,   112,  -161,  -161,   116,
      58,  -161,    58,     2,  -161,   117,   122,  -161,   120,    25,
      25,   119,   105,   124,  -161,  -161,    58,  -161,  -161,   121,
    -161,   127,   123,   128,   147,  -161,  -161,    58,  -161,  -161,
    -161,   125,     7,   129,    25,   126,  -161,   130,  -161,  -161,
     138,   132,  -161,  -161,   133,   131,  -161,  -161,  -161,     7,
    -161,   150,  -161,  -161,   134,     1,   135,   -14,   164,  -161,
      58,   137,   136,  -161
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       4,     0,     0,     6,     0,     1,     0,     3,     0,     0,
       8,     5,   104,   103,     0,     0,     2,     9,   108,     0,
       7,    12,    13,     0,   111,     0,   107,     0,     0,   109,
       0,     0,    14,     0,     0,   110,    46,     0,   105,   106,
       0,    17,     0,   112,    28,    92,     0,    89,    90,    91,
      88,     0,     0,     0,     0,    69,    58,    57,    59,    60,
      61,    62,    63,    64,    65,    66,    67,    68,    70,    93,
      94,    95,    96,    97,    20,    19,     0,     0,     0,     0,
       0,     0,    28,    39,    40,    41,    42,    43,    44,    45,
       0,     0,    56,   101,    91,    98,    91,   102,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    17,    36,
      35,     0,    37,     0,    16,     0,     0,     0,     0,     0,
       0,    56,     0,    47,    27,     0,     0,     0,    86,    55,
       0,    72,    73,    75,    74,     0,    81,     0,    76,    77,
      78,    79,    19,     0,     0,     0,    15,    18,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   100,    83,    84,
       0,    80,    56,     0,    34,     0,     0,    22,     0,     0,
       0,     0,     0,     0,    48,    99,     0,    85,    71,     0,
      21,     0,     0,     0,    50,    52,    53,     0,    54,    87,
      82,     0,    26,     0,     0,     0,    38,     0,    25,    31,
       0,     0,    51,    49,     0,    29,    32,    10,    23,     0,
      30,     0,    17,    33,     0,    28,     0,    37,     0,    11,
       0,     0,     0,    24
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -161,  -161,  -161,  -161,  -161,  -161,  -161,  -161,  -161,  -161,
    -161,  -106,    42,  -161,  -161,  -161,  -161,  -161,  -161,   -81,
    -161,  -161,   -32,  -161,  -142,  -160,   155,  -161,  -161,  -161,
    -161,  -161,   -25,  -161,  -113,   -37,  -161,  -161,  -161,  -161,
    -161,  -161,  -161,  -161,  -161,  -161,  -161,  -161,  -161,  -161,
    -161,  -161,   -47,  -161,  -161,  -161,  -161,   157,  -161,  -161,
    -161,  -161,  -161,  -161,  -161
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     2,     3,     6,    16,    10,    23,   211,    20,    21,
      41,    75,   113,    22,   108,   114,   147,   212,   197,    81,
     198,   205,   199,   210,   115,    82,    83,    44,    84,    85,
      86,    87,    88,    89,   127,   128,    55,    56,    57,    58,
      59,    60,    61,    62,    63,    64,    65,    66,    67,   129,
     159,   177,    68,    69,    70,    71,    72,    73,    11,    12,
      13,    25,    26,    29,    35
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      54,   124,   142,   166,   145,    95,   145,    31,   154,   184,
     185,   109,   110,    77,    93,    78,    54,   109,   110,    90,
     120,   130,     1,    79,    92,    36,    37,     8,     5,   111,
     121,     7,   217,   136,   202,   111,   122,    77,   112,    78,
      91,     9,    32,   137,    36,     4,   146,    79,   180,   179,
     200,   131,   132,   133,   134,   135,    80,   138,   139,   140,
     141,    14,    15,    17,    19,    18,    24,   200,    36,    27,
      28,    40,    33,    45,    46,    30,    34,    47,    48,    42,
     150,   151,   152,   153,    43,   155,    74,    76,   156,    49,
      50,    51,    45,    46,    92,    52,    47,    48,    97,   116,
      45,    46,    53,   117,    47,    48,   215,   118,    94,    50,
      51,   123,   119,   125,    52,   126,    96,    50,    51,   148,
     143,    37,    52,   178,   144,   149,   160,   161,   157,    53,
      98,    99,   100,   101,   218,   158,   162,   167,   164,   189,
     102,   103,   104,   105,   106,   107,   165,   168,   169,   170,
     195,   171,   173,   182,   172,   187,   174,   175,   191,   193,
     194,   186,   190,   176,   181,   183,   188,   192,   203,   206,
     201,   204,    79,   220,   196,   207,   208,   213,   209,   222,
     216,   219,   223,   221,   163,    38,   214,    39
};

static const yytype_uint8 yycheck[] =
{
      37,    82,   108,   145,     4,    52,     4,     8,   121,   169,
     170,    10,    11,    12,    51,    14,    53,    10,    11,    10,
      34,    41,    30,    22,    44,    43,    44,     3,     0,    28,
      44,    42,    31,    21,   194,    28,    50,    12,    31,    14,
      31,    17,    43,    31,    43,    29,    46,    22,    46,   162,
     192,    98,    99,   100,   101,   102,    31,   104,   105,   106,
     107,    31,    31,    43,     3,    44,    31,   209,    43,    31,
       4,    31,     5,    15,    16,    41,    47,    19,    20,     6,
     117,   118,   119,   120,    31,   122,    43,    18,   125,    31,
      32,    33,    15,    16,    44,    37,    19,    20,    41,    44,
      15,    16,    44,    44,    19,    20,   212,    44,    31,    32,
      33,    46,    44,    34,    37,    44,    31,    32,    33,    31,
      34,    44,    37,   160,    48,     7,    23,    45,    41,    44,
      24,    25,    26,    27,   215,    41,    44,    42,    45,   176,
      34,    35,    36,    37,    38,    39,    31,    34,    41,    41,
     187,    41,    41,    31,    45,    50,    42,    45,    31,    31,
      13,    42,    41,    47,    47,    45,    42,    44,    42,    31,
      41,    41,    22,     9,    49,    43,    43,   209,    47,    42,
      46,    46,    46,   220,   142,    30,   211,    30
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    30,    52,    53,    29,     0,    54,    42,     3,    17,
      56,   109,   110,   111,    31,    31,    55,    43,    44,     3,
      59,    60,    64,    57,    31,   112,   113,    31,     4,   114,
      41,     8,    43,     5,    47,   115,    43,    44,    77,   108,
      31,    61,     6,    31,    78,    15,    16,    19,    20,    31,
      32,    33,    37,    44,    86,    87,    88,    89,    90,    91,
      92,    93,    94,    95,    96,    97,    98,    99,   103,   104,
     105,   106,   107,   108,    43,    62,    18,    12,    14,    22,
      31,    70,    76,    77,    79,    80,    81,    82,    83,    84,
      10,    31,    44,    86,    31,   103,    31,    41,    24,    25,
      26,    27,    34,    35,    36,    37,    38,    39,    65,    10,
      11,    28,    31,    63,    66,    75,    44,    44,    44,    44,
      34,    44,    50,    46,    70,    34,    44,    85,    86,   100,
      41,   103,   103,   103,   103,   103,    21,    31,   103,   103,
     103,   103,    62,    34,    48,     4,    46,    67,    31,     7,
      86,    86,    86,    86,    85,    86,    86,    41,    41,   101,
      23,    45,    44,    63,    45,    31,    75,    42,    34,    41,
      41,    41,    45,    41,    42,    45,    47,   102,    86,    85,
      46,    47,    31,    45,    76,    76,    42,    50,    42,    86,
      41,    31,    44,    31,    13,    86,    49,    69,    71,    73,
      75,    41,    76,    42,    41,    72,    31,    43,    43,    47,
      74,    58,    68,    73,    83,    62,    46,    31,    70,    46,
       9,    86,    42,    46
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    51,    52,    53,    53,    54,    54,    55,    55,    57,
      58,    56,    59,    59,    61,    60,    62,    62,    63,    63,
      65,    64,    66,    68,    67,    69,    69,    70,    70,    71,
      72,    72,    73,    74,    75,    75,    75,    75,    75,    76,
      76,    76,    76,    76,    76,    76,    78,    77,    79,    80,
      81,    81,    82,    83,    84,    85,    85,    86,    86,    86,
      86,    86,    86,    86,    86,    86,    86,    86,    86,    86,
      86,    87,    88,    89,    90,    91,    92,    93,    94,    95,
      96,    97,    98,    99,   100,   101,   101,   102,   103,   103,
     103,   103,   103,   103,   103,   103,   103,   103,   104,   105,
     106,   107,   108,   109,   109,   110,   111,   112,   112,   113,
     114,   114,   115
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     4,     3,     0,     2,     0,     2,     0,     0,
       0,    19,     1,     1,     0,     7,     2,     0,     2,     0,
       0,     9,     3,     0,    14,     1,     0,     2,     0,     2,
       2,     0,     2,     2,     3,     1,     1,     1,     6,     1,
       1,     1,     1,     1,     1,     1,     0,     4,     4,     7,
       5,     7,     5,     5,     5,     1,     0,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     5,     3,     3,     3,     3,     3,     3,     3,     3,
       4,     3,     6,     4,     2,     2,     0,     2,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     2,     5,
       4,     2,     3,     1,     1,     6,     6,     1,     0,     2,
       2,     0,     2
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* goal: import_function_ macro_definition_ main_class type_declaration_  */
#line 120 "P1.y"
                                                                    {output = std::string(join_strings("", (yyvsp[-3].val), (yyvsp[-1].val), (yyvsp[0].val)));}
#line 1422 "P1.tab.c"
    break;

  case 3: /* import_function_: IMPORT IMPORT_FUNCTION ';'  */
#line 124 "P1.y"
                               {(yyval.val) = join_strings("", "import java.util.function.Function;\n\n");}
#line 1428 "P1.tab.c"
    break;

  case 4: /* import_function_: %empty  */
#line 125 "P1.y"
      {(yyval.val) = "";}
#line 1434 "P1.tab.c"
    break;

  case 7: /* type_declaration_: type_declaration_ type_declaration  */
#line 134 "P1.y"
                                       {(yyval.val) = join_strings("", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1440 "P1.tab.c"
    break;

  case 8: /* type_declaration_: %empty  */
#line 135 "P1.y"
      {(yyval.val) = "";}
#line 1446 "P1.tab.c"
    break;

  case 9: /* $@1: %empty  */
#line 139 "P1.y"
                         {count_tabs++;}
#line 1452 "P1.tab.c"
    break;

  case 10: /* $@2: %empty  */
#line 139 "P1.y"
                                                                                                       {count_tabs++;}
#line 1458 "P1.tab.c"
    break;

  case 11: /* main_class: CLASS IDENTIFIER '{' $@1 PUBLIC STATIC VOID MAIN '(' STRING '[' ']' IDENTIFIER ')' '{' $@2 print_statement '}' '}'  */
#line 140 "P1.y"
        {
            (yyval.val) = join_strings("", required_tabs(count_tabs - 2), "class ", (yyvsp[-17].val), " {\n", required_tabs(count_tabs - 1), "public static void main (String[] ", (yyvsp[-6].val), ") {\n", (yyvsp[-2].val), required_tabs(count_tabs - 1), "}\n", required_tabs(count_tabs - 2), "}\n\n"); 
            count_tabs -= 2;
        }
#line 1467 "P1.tab.c"
    break;

  case 12: /* type_declaration: class_declaration  */
#line 147 "P1.y"
                      {(yyval.val) = (yyvsp[0].val);}
#line 1473 "P1.tab.c"
    break;

  case 13: /* type_declaration: class_extends_declaration  */
#line 148 "P1.y"
                                {(yyval.val) = (yyvsp[0].val);}
#line 1479 "P1.tab.c"
    break;

  case 14: /* $@3: %empty  */
#line 152 "P1.y"
                         {count_tabs++;}
#line 1485 "P1.tab.c"
    break;

  case 15: /* class_declaration: CLASS IDENTIFIER '{' $@3 var_declaration_ method_declaration_ '}'  */
#line 153 "P1.y"
        {
            (yyval.val) = join_strings("", required_tabs(count_tabs - 1), "class ", (yyvsp[-5].val), " {\n", (yyvsp[-2].val), (yyvsp[-1].val), required_tabs(count_tabs - 1), "}\n\n"); 
            count_tabs--;
        }
#line 1494 "P1.tab.c"
    break;

  case 16: /* var_declaration_: var_declaration_ var_declaration  */
#line 160 "P1.y"
                                      {(yyval.val) = join_strings("", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1500 "P1.tab.c"
    break;

  case 17: /* var_declaration_: %empty  */
#line 161 "P1.y"
      {(yyval.val) = "";}
#line 1506 "P1.tab.c"
    break;

  case 18: /* method_declaration_: method_declaration_ method_declaration  */
#line 165 "P1.y"
                                           {(yyval.val) = join_strings("", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1512 "P1.tab.c"
    break;

  case 19: /* method_declaration_: %empty  */
#line 166 "P1.y"
      {(yyval.val) = "";}
#line 1518 "P1.tab.c"
    break;

  case 20: /* $@4: %empty  */
#line 170 "P1.y"
                                            {count_tabs++;}
#line 1524 "P1.tab.c"
    break;

  case 21: /* class_extends_declaration: CLASS IDENTIFIER EXTENDS IDENTIFIER '{' $@4 var_declaration_ method_declaration_ '}'  */
#line 171 "P1.y"
        {
            (yyval.val) = join_strings("", required_tabs(count_tabs - 1), "class ", (yyvsp[-7].val), " extends ", (yyvsp[-5].val), " {\n", (yyvsp[-2].val), (yyvsp[-1].val), required_tabs(count_tabs - 1), "}\n\n"); 
            count_tabs--;
        }
#line 1533 "P1.tab.c"
    break;

  case 22: /* var_declaration: type IDENTIFIER ';'  */
#line 178 "P1.y"
                        {(yyval.val) = join_strings("", required_tabs(count_tabs), (yyvsp[-2].val), " ", (yyvsp[-1].val), ";\n");}
#line 1539 "P1.tab.c"
    break;

  case 23: /* $@5: %empty  */
#line 182 "P1.y"
                                                              {count_tabs++;}
#line 1545 "P1.tab.c"
    break;

  case 24: /* method_declaration: PUBLIC type IDENTIFIER '(' formal_parameter_list_ ')' '{' $@5 var_declaration_ statement_ RETURN expression ';' '}'  */
#line 183 "P1.y"
        {
            (yyval.val) = join_strings("", required_tabs(count_tabs - 1), "public ", (yyvsp[-12].val), " ", (yyvsp[-11].val), "(", (yyvsp[-9].val), ")", " {\n", (yyvsp[-5].val), (yyvsp[-4].val), required_tabs(count_tabs), "return ", (yyvsp[-2].val), ";\n", required_tabs(count_tabs - 1), "}\n\n"); 
            count_tabs--;
        }
#line 1554 "P1.tab.c"
    break;

  case 25: /* formal_parameter_list_: formal_parameter_list  */
#line 190 "P1.y"
                          {(yyval.val) = (yyvsp[0].val);}
#line 1560 "P1.tab.c"
    break;

  case 26: /* formal_parameter_list_: %empty  */
#line 191 "P1.y"
      {(yyval.val) = "";}
#line 1566 "P1.tab.c"
    break;

  case 27: /* statement_: statement statement_  */
#line 195 "P1.y"
                         {(yyval.val) = join_strings("", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1572 "P1.tab.c"
    break;

  case 28: /* statement_: %empty  */
#line 196 "P1.y"
      {(yyval.val) = "";}
#line 1578 "P1.tab.c"
    break;

  case 29: /* formal_parameter_list: formal_parameter formal_parameter_rest_  */
#line 200 "P1.y"
                                            {(yyval.val) = join_strings("", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1584 "P1.tab.c"
    break;

  case 30: /* formal_parameter_rest_: formal_parameter_rest_ formal_parameter_rest  */
#line 204 "P1.y"
                                                 {(yyval.val) = join_strings(", ", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1590 "P1.tab.c"
    break;

  case 31: /* formal_parameter_rest_: %empty  */
#line 205 "P1.y"
      {(yyval.val) = "";}
#line 1596 "P1.tab.c"
    break;

  case 32: /* formal_parameter: type IDENTIFIER  */
#line 209 "P1.y"
                    {(yyval.val) = join_strings(" ", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1602 "P1.tab.c"
    break;

  case 33: /* formal_parameter_rest: ',' formal_parameter  */
#line 213 "P1.y"
                         {(yyval.val) = (yyvsp[0].val);}
#line 1608 "P1.tab.c"
    break;

  case 34: /* type: INT '[' ']'  */
#line 217 "P1.y"
                {(yyval.val) = "int[]";}
#line 1614 "P1.tab.c"
    break;

  case 35: /* type: BOOL  */
#line 218 "P1.y"
           {(yyval.val) = "boolean";}
#line 1620 "P1.tab.c"
    break;

  case 36: /* type: INT  */
#line 219 "P1.y"
          {(yyval.val) = "int";}
#line 1626 "P1.tab.c"
    break;

  case 37: /* type: IDENTIFIER  */
#line 220 "P1.y"
                 {(yyval.val) = (yyvsp[0].val);}
#line 1632 "P1.tab.c"
    break;

  case 38: /* type: FUNCTION '<' IDENTIFIER ',' IDENTIFIER '>'  */
#line 221 "P1.y"
                                                 {(yyval.val) = join_strings("", "Function<", (yyvsp[-3].val), ",", (yyvsp[-1].val), ">");}
#line 1638 "P1.tab.c"
    break;

  case 39: /* statement: block  */
#line 225 "P1.y"
          {(yyval.val) = (yyvsp[0].val);}
#line 1644 "P1.tab.c"
    break;

  case 40: /* statement: assignment_statement  */
#line 226 "P1.y"
                           {(yyval.val) = (yyvsp[0].val);}
#line 1650 "P1.tab.c"
    break;

  case 41: /* statement: array_assignment_statement  */
#line 227 "P1.y"
                                 {(yyval.val) = (yyvsp[0].val);}
#line 1656 "P1.tab.c"
    break;

  case 42: /* statement: if_statement  */
#line 228 "P1.y"
                   {(yyval.val) = (yyvsp[0].val);}
#line 1662 "P1.tab.c"
    break;

  case 43: /* statement: while_statement  */
#line 229 "P1.y"
                      {(yyval.val) = (yyvsp[0].val);}
#line 1668 "P1.tab.c"
    break;

  case 44: /* statement: print_statement  */
#line 230 "P1.y"
                      {(yyval.val) = (yyvsp[0].val);}
#line 1674 "P1.tab.c"
    break;

  case 45: /* statement: macro_statement  */
#line 231 "P1.y"
                      {(yyval.val) = (yyvsp[0].val);}
#line 1680 "P1.tab.c"
    break;

  case 46: /* $@6: %empty  */
#line 235 "P1.y"
        {count_tabs++;}
#line 1686 "P1.tab.c"
    break;

  case 47: /* block: '{' $@6 statement_ '}'  */
#line 235 "P1.y"
                                       {(yyval.val) = join_strings("", "{\n", (yyvsp[-1].val), required_tabs(count_tabs - 1), "}\n"); count_tabs--;}
#line 1692 "P1.tab.c"
    break;

  case 48: /* assignment_statement: IDENTIFIER '=' expression ';'  */
#line 239 "P1.y"
                                  {(yyval.val) = join_strings("", required_tabs(count_tabs), (yyvsp[-3].val), " = ", (yyvsp[-1].val), ";\n");}
#line 1698 "P1.tab.c"
    break;

  case 49: /* array_assignment_statement: IDENTIFIER '[' expression ']' '=' expression ';'  */
#line 243 "P1.y"
                                                     {(yyval.val) = join_strings("", required_tabs(count_tabs), (yyvsp[-6].val), "[", (yyvsp[-4].val), "] = ", (yyvsp[-1].val), ";\n");}
#line 1704 "P1.tab.c"
    break;

  case 50: /* if_statement: IF '(' expression ')' statement  */
#line 248 "P1.y"
        {
            (yyval.val) = join_strings("", required_tabs(count_tabs), "if (", (yyvsp[-2].val), ") ", (std::string((yyvsp[0].val))[0] != '{' ? "\n" : ""), (yyvsp[0].val), "\n");
        }
#line 1712 "P1.tab.c"
    break;

  case 51: /* if_statement: IF '(' expression ')' statement ELSE statement  */
#line 252 "P1.y"
        {
            (yyval.val) = join_strings("", required_tabs(count_tabs), "if (", (yyvsp[-4].val), ") ", (std::string((yyvsp[-2].val))[0] != '{' ? "\n" : ""), (yyvsp[-2].val), required_tabs(count_tabs), "else ", (std::string((yyvsp[0].val))[0] != '{' ? "\n" : ""), (yyvsp[0].val), "\n");
        }
#line 1720 "P1.tab.c"
    break;

  case 52: /* while_statement: WHILE '(' expression ')' statement  */
#line 258 "P1.y"
                                       {(yyval.val) = join_strings("", required_tabs(count_tabs), "while (", (yyvsp[-2].val), ") ", (yyvsp[0].val), "\n");}
#line 1726 "P1.tab.c"
    break;

  case 53: /* print_statement: PRINT_OUT '(' expression ')' ';'  */
#line 262 "P1.y"
                                     {(yyval.val) = join_strings("", required_tabs(count_tabs), "System.out.println(", (yyvsp[-2].val), ");\n");}
#line 1732 "P1.tab.c"
    break;

  case 54: /* macro_statement: IDENTIFIER '(' expression_list_ ')' ';'  */
#line 266 "P1.y"
                                            {(yyval.val) = join_strings("", apply_macro(0, (yyvsp[-4].val), (yyvsp[-2].val)));}
#line 1738 "P1.tab.c"
    break;

  case 55: /* expression_list_: expression_list  */
#line 270 "P1.y"
                    {(yyval.val) = (yyvsp[0].val);}
#line 1744 "P1.tab.c"
    break;

  case 56: /* expression_list_: %empty  */
#line 271 "P1.y"
        {(yyval.val) = "";}
#line 1750 "P1.tab.c"
    break;

  case 57: /* expression: or_expression  */
#line 275 "P1.y"
                  {(yyval.val) = (yyvsp[0].val);}
#line 1756 "P1.tab.c"
    break;

  case 58: /* expression: and_expression  */
#line 276 "P1.y"
                     {(yyval.val) = (yyvsp[0].val);}
#line 1762 "P1.tab.c"
    break;

  case 59: /* expression: compare_expression  */
#line 277 "P1.y"
                         {(yyval.val) = (yyvsp[0].val);}
#line 1768 "P1.tab.c"
    break;

  case 60: /* expression: neq_expression  */
#line 278 "P1.y"
                     {(yyval.val) = (yyvsp[0].val);}
#line 1774 "P1.tab.c"
    break;

  case 61: /* expression: add_expression  */
#line 279 "P1.y"
                     {(yyval.val) = (yyvsp[0].val);}
#line 1780 "P1.tab.c"
    break;

  case 62: /* expression: minus_expression  */
#line 280 "P1.y"
                       {(yyval.val) = (yyvsp[0].val);}
#line 1786 "P1.tab.c"
    break;

  case 63: /* expression: times_expression  */
#line 281 "P1.y"
                       {(yyval.val) = (yyvsp[0].val);}
#line 1792 "P1.tab.c"
    break;

  case 64: /* expression: div_expression  */
#line 282 "P1.y"
                     {(yyval.val) = (yyvsp[0].val);}
#line 1798 "P1.tab.c"
    break;

  case 65: /* expression: array_lookup  */
#line 283 "P1.y"
                   {(yyval.val) = (yyvsp[0].val);}
#line 1804 "P1.tab.c"
    break;

  case 66: /* expression: array_length  */
#line 284 "P1.y"
                   {(yyval.val) = (yyvsp[0].val);}
#line 1810 "P1.tab.c"
    break;

  case 67: /* expression: message_send  */
#line 285 "P1.y"
                   {(yyval.val) = (yyvsp[0].val);}
#line 1816 "P1.tab.c"
    break;

  case 68: /* expression: macro_expression  */
#line 286 "P1.y"
                       {(yyval.val) = (yyvsp[0].val);}
#line 1822 "P1.tab.c"
    break;

  case 69: /* expression: lambda_expression  */
#line 287 "P1.y"
                        {(yyval.val) = (yyvsp[0].val);}
#line 1828 "P1.tab.c"
    break;

  case 70: /* expression: primary_expression  */
#line 288 "P1.y"
                                   {(yyval.val) = (yyvsp[0].val);}
#line 1834 "P1.tab.c"
    break;

  case 71: /* lambda_expression: '(' IDENTIFIER ')' ARROWOP expression  */
#line 292 "P1.y"
                                           {(yyval.val) = join_strings("", "((", (yyvsp[-3].val), "_unexpected",") -> ", modify_lambda((yyvsp[-3].val), (yyvsp[0].val)), ")");}
#line 1840 "P1.tab.c"
    break;

  case 72: /* and_expression: primary_expression AND primary_expression  */
#line 296 "P1.y"
                                                {(yyval.val) = join_strings(" ", (yyvsp[-2].val), "&&", (yyvsp[0].val));}
#line 1846 "P1.tab.c"
    break;

  case 73: /* or_expression: primary_expression OR primary_expression  */
#line 300 "P1.y"
                                             {(yyval.val) = join_strings(" ", (yyvsp[-2].val), "||", (yyvsp[0].val));}
#line 1852 "P1.tab.c"
    break;

  case 74: /* compare_expression: primary_expression LTEQ primary_expression  */
#line 304 "P1.y"
                                               {(yyval.val) = join_strings(" ", (yyvsp[-2].val), "<=", (yyvsp[0].val));}
#line 1858 "P1.tab.c"
    break;

  case 75: /* neq_expression: primary_expression NEQ primary_expression  */
#line 308 "P1.y"
                                              {(yyval.val) = join_strings(" ", (yyvsp[-2].val), "!=", (yyvsp[0].val));}
#line 1864 "P1.tab.c"
    break;

  case 76: /* add_expression: primary_expression '+' primary_expression  */
#line 312 "P1.y"
                                              {(yyval.val) = join_strings(" ", (yyvsp[-2].val), "+", (yyvsp[0].val));}
#line 1870 "P1.tab.c"
    break;

  case 77: /* minus_expression: primary_expression '-' primary_expression  */
#line 316 "P1.y"
                                              {(yyval.val) = join_strings(" ", (yyvsp[-2].val), "-", (yyvsp[0].val));}
#line 1876 "P1.tab.c"
    break;

  case 78: /* times_expression: primary_expression '*' primary_expression  */
#line 320 "P1.y"
                                              {(yyval.val) = join_strings(" ", (yyvsp[-2].val), "*", (yyvsp[0].val));}
#line 1882 "P1.tab.c"
    break;

  case 79: /* div_expression: primary_expression '/' primary_expression  */
#line 324 "P1.y"
                                              {(yyval.val) = join_strings(" ", (yyvsp[-2].val), "/", (yyvsp[0].val));}
#line 1888 "P1.tab.c"
    break;

  case 80: /* array_lookup: primary_expression '[' primary_expression ']'  */
#line 328 "P1.y"
                                                  {(yyval.val) = join_strings("", (yyvsp[-3].val), "[", (yyvsp[-1].val), "]");}
#line 1894 "P1.tab.c"
    break;

  case 81: /* array_length: primary_expression '.' LENGTH  */
#line 332 "P1.y"
                                  {(yyval.val) = join_strings("", (yyvsp[-2].val), ".length" );}
#line 1900 "P1.tab.c"
    break;

  case 82: /* message_send: primary_expression '.' IDENTIFIER '(' expression_list_ ')'  */
#line 336 "P1.y"
                                                               {(yyval.val) = join_strings("", (yyvsp[-5].val), ".", (yyvsp[-3].val), "(", (yyvsp[-1].val), ")");}
#line 1906 "P1.tab.c"
    break;

  case 83: /* macro_expression: IDENTIFIER '(' expression_list_ ')'  */
#line 340 "P1.y"
                                       {(yyval.val) = join_strings("", apply_macro(1, (yyvsp[-3].val), (yyvsp[-1].val)));}
#line 1912 "P1.tab.c"
    break;

  case 84: /* expression_list: expression expression_rest_  */
#line 344 "P1.y"
                                {(yyval.val) = join_strings("", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1918 "P1.tab.c"
    break;

  case 85: /* expression_rest_: expression_rest_ expression_rest  */
#line 348 "P1.y"
                                     {(yyval.val) = join_strings(",", (yyvsp[-1].val), (yyvsp[0].val));}
#line 1924 "P1.tab.c"
    break;

  case 86: /* expression_rest_: %empty  */
#line 349 "P1.y"
      {(yyval.val) = "";}
#line 1930 "P1.tab.c"
    break;

  case 87: /* expression_rest: ',' expression  */
#line 353 "P1.y"
                   {(yyval.val) = (yyvsp[0].val);}
#line 1936 "P1.tab.c"
    break;

  case 88: /* primary_expression: INT_LITERAL  */
#line 357 "P1.y"
                {(yyval.val) = (yyvsp[0].val);}
#line 1942 "P1.tab.c"
    break;

  case 89: /* primary_expression: TRUE_  */
#line 358 "P1.y"
            {(yyval.val) = "true";}
#line 1948 "P1.tab.c"
    break;

  case 90: /* primary_expression: FALSE_  */
#line 359 "P1.y"
             {(yyval.val) = "false";}
#line 1954 "P1.tab.c"
    break;

  case 92: /* primary_expression: THIS  */
#line 361 "P1.y"
           {(yyval.val) = "this";}
#line 1960 "P1.tab.c"
    break;

  case 93: /* primary_expression: uminus_expression  */
#line 362 "P1.y"
                        {(yyval.val) = (yyvsp[0].val);}
#line 1966 "P1.tab.c"
    break;

  case 94: /* primary_expression: array_alloc_expression  */
#line 363 "P1.y"
                             {(yyval.val) = (yyvsp[0].val);}
#line 1972 "P1.tab.c"
    break;

  case 95: /* primary_expression: allocation_expression  */
#line 364 "P1.y"
                            {(yyval.val) = (yyvsp[0].val);}
#line 1978 "P1.tab.c"
    break;

  case 96: /* primary_expression: not_expression  */
#line 365 "P1.y"
                     {(yyval.val) = (yyvsp[0].val);}
#line 1984 "P1.tab.c"
    break;

  case 97: /* primary_expression: bracket_expression  */
#line 366 "P1.y"
                         {(yyval.val) = (yyvsp[0].val);}
#line 1990 "P1.tab.c"
    break;

  case 98: /* uminus_expression: '-' primary_expression  */
#line 370 "P1.y"
                           {(yyval.val) = join_strings("", "-", (yyvsp[0].val));}
#line 1996 "P1.tab.c"
    break;

  case 99: /* array_alloc_expression: NEW INT '[' expression ']'  */
#line 374 "P1.y"
                               {(yyval.val) = join_strings("", "new int[", (yyvsp[-1].val), "]");}
#line 2002 "P1.tab.c"
    break;

  case 100: /* allocation_expression: NEW IDENTIFIER '(' ')'  */
#line 378 "P1.y"
                           {(yyval.val) = join_strings("", "new ", (yyvsp[-2].val), "()");}
#line 2008 "P1.tab.c"
    break;

  case 101: /* not_expression: '!' expression  */
#line 382 "P1.y"
                   {(yyval.val) = join_strings("", "!", (yyvsp[0].val));}
#line 2014 "P1.tab.c"
    break;

  case 102: /* bracket_expression: '(' expression ')'  */
#line 386 "P1.y"
                       {(yyval.val) = join_strings("", "(", (yyvsp[-1].val), ")");}
#line 2020 "P1.tab.c"
    break;

  case 105: /* macro_def_statement: DEFINE IDENTIFIER '(' identifier_list_ ')' block  */
#line 395 "P1.y"
                                                     {add_macro(0, (yyvsp[-4].val), (yyvsp[-2].val), (yyvsp[0].val));}
#line 2026 "P1.tab.c"
    break;

  case 106: /* macro_def_expression: DEFINE IDENTIFIER '(' identifier_list_ ')' bracket_expression  */
#line 399 "P1.y"
                                                                   {add_macro(1, (yyvsp[-4].val), (yyvsp[-2].val), (yyvsp[0].val));}
#line 2032 "P1.tab.c"
    break;

  case 107: /* identifier_list_: identifier_list  */
#line 403 "P1.y"
                    {(yyval.val) = (yyvsp[0].val);}
#line 2038 "P1.tab.c"
    break;

  case 108: /* identifier_list_: %empty  */
#line 404 "P1.y"
      {(yyval.val) = "";}
#line 2044 "P1.tab.c"
    break;

  case 109: /* identifier_list: IDENTIFIER identifier_rest_  */
#line 408 "P1.y"
                                {(yyval.val) = join_strings("", (yyvsp[-1].val), (yyvsp[0].val));}
#line 2050 "P1.tab.c"
    break;

  case 110: /* identifier_rest_: identifier_rest_ identifier_rest  */
#line 412 "P1.y"
                                     {(yyval.val) = join_strings(",", (yyvsp[-1].val), (yyvsp[0].val));}
#line 2056 "P1.tab.c"
    break;

  case 111: /* identifier_rest_: %empty  */
#line 413 "P1.y"
      {(yyval.val) = "";}
#line 2062 "P1.tab.c"
    break;

  case 112: /* identifier_rest: ',' IDENTIFIER  */
#line 417 "P1.y"
                   {(yyval.val) = (yyvsp[0].val);}
#line 2068 "P1.tab.c"
    break;


#line 2072 "P1.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 420 "P1.y"


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
