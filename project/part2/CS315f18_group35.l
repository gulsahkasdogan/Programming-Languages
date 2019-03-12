integer [0-9]+
letters [a-z]+
capital [A-Z]+
float [0-9]+\.[0-9]+
uppercase [A-Z]
%{
int lineCounter = 1;
%}
%%
start return(PROGRAM_START);
stop return(PROGRAM_STOP);
string return(TYPE_STRING);
float return(TYPE_FLOAT);
int return(TYPE_INT);
boolean return(TYPE_BOOL);
direction return(TYPE_DIRECTION);
return return(RETURN);
if return(IF);
else return(ELSE);
true return(TRUE);
false return(FALSE);
east return(DIR_EAST);
west return(DIR_WEST);
north return(DIR_NORTH);
south return(DIR_SOUTH);
northeast return(DIR_NORTHEAST);
northwest return(DIR_NORTHWEST);
souteast return(DIR_SOUTHEAST);
southwest return(DIR_SOUTHWEST);
list return(LIST_INIT);
while return(WHILE_LOOP);
function return(FUNC_BEGN);
or return(OR);
and return(AND);
not return(NOT);
move return(MOVE_FUNC);
turn return(TURN_FUNC);
grab return(GRAB_FUNC);
release return(RELEASE_FUNC);
readData return(READ_FUNC);
sendData return(SEND_FUNC);
print return(PRINT_STATEMENT);
scan return(SCAN_STATEMENT);
{letters} return(VARIABLE);
{integer} return(INTEGER);
, return(COMMA);
\( return(LP);
\) return(RP);
\{ return(LC);
\} return(RC);
\[ return(LSQ);
\] return(RSQ);
\; return(SEMI_COL);
\= return(ASGN_OP);
#.+\# return(COMMENT);
\" return(QUOTE);
{capital} return(CONSTANT);
[A-Z]{letters} return(FUNC_NAME);
\+ return(PLUS);
\- return(MINUS);
\/ return(DIVISION);
\* return(MULTIPLICATION);
\% return(MODULO);
\n {lineCounter++;}
.;
%%
int yywrap(){return 1;}
