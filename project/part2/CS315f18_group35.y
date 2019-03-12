%token PROGRAM_START PROGRAM_STOP TYPE_STRING TYPE_FLOAT TYPE_INT TYPE_BOOL TYPE_DIRECTION
RETURN IF ELSE TRUE FALSE DIR_EAST DIR_WEST DIR_SOUTH DIR_NORTH DIR_NORTHEAST
DIR_NORTHWEST DIR_SOUTHEAST DIR_SOUTHWEST LIST_INIT WHILE_LOOP SCAN_STATEMENT FUNC_BEGN
OR AND NOT MOVE_FUNC TURN_FUNC GRAB_FUNC RELEASE_FUNC READ_FUNC SEND_FUNC VARIABLE
INTEGER COMMA LP RP LC RC LSQ RSQ SEMI_COL ASGN_OP COMMENT QUOTE PRINT_STATEMENT
SCAN_STATEMENT VARIABLE INTEGER CONSTANT FUNC_NAME FLOAT PLUS MINUS DIVISION MULTIPLICATION
MODULO SINGLE_CAPITAL
%right '='
%left '+' '-'
%left '*''/''%'
%%
start: program
;
program: PROGRAM_START functions PROGRAM_STOP statements
|statements
|/*EMPTY*/
;
functions: function|functions function
;
function: LSQ type RSQ function_name LP  parameter_list RP  LC body RC
;
type: TYPE_STRING|TYPE_FLOAT|TYPE_INT|TYPE_BOOL|TYPE_DIRECTION
;
function_name: FUNC_NAME
;
parameter_list: /*EMPTY*/
|type variable COMMA parameter_list
|type variable
;
body: statements RETURN function_instantiation
|statements RETURN element
;
statements:statement SEMI_COL
|statement SEMI_COL statements 
|COMMENT statements
|statement COMMENT
;
statement: matched | unmatched
;
matched: IF LP logic_expr RP matched ELSE matched
|non_if
;
unmatched: IF LP logic_expr RP statement
| IF LP logic_expr RP matched ELSE unmatched
;
non_if: assignment
|loop
|list
|print
|scan
|primitive_func
;
primitive_func: move|grab|turn|release|sendData|readData
;

assignment: variable ASGN_OP logic_expr
|variable ASGN_OP math_expr
|variable ASGN_OP function_instantiation
|list_position ASGN_OP atom
;
variable: VARIABLE | CONSTANT
;
int: INTEGER
;
float: FLOAT
;
logic_value: TRUE|FALSE
;
dir: DIR_EAST| DIR_WEST| DIR_SOUTH|DIR_NORTH|DIR_NORTHEAST
|DIR_NORTHWEST |DIR_SOUTHEAST |DIR_SOUTHWEST
;
loop: WHILE_LOOP LP element RP LC statements RC
;
list: LIST_INIT LSQ int RSQ
;
list_position: variable LSQ int RSQ
;
print: PRINT_STATEMENT LP element RP
;
scan: SCAN_STATEMENT LP variable RP
;
move: MOVE_FUNC LP dir COMMA float 
;
turn: TURN_FUNC LP float RP 
;
grab: GRAB_FUNC LP variable RP
;
release: RELEASE_FUNC LP variable RP
;
readData: READ_FUNC LP variable RP 
;
sendData: SEND_FUNC LP variable RP
;

function_instantiation: FUNC_BEGN LP parameter_list RP
;
math_expr: expr '=' expr    
| expr '+' expr 
| expr '-' expr 
| expr '*' expr 
| expr '/' expr
;
expr: float|int
;

logic_expr: logic_expr OR and 
| and 
;
and: and AND not
| not
;
not: NOT element
| element 
;
element: LP logic_expr RP 
;
atom: float|int|logic_value|dir
;
%%
#include "lex.yy.c"
extern int lineCounter;
int main(){
  yyparse();
  printf("Valid Input");
  return 0;
}
int yyerror(const char *s){fprintf(stderr, "%s in line %d\n", s, lineCounter); }
