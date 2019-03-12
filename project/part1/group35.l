%option main
integer [0-9]+
letters [a-zA-Z]+
float [0-9]+\.[0-9]+
%%
Robot printf("ROBOT ");
start printf("PROGRAM_START ");
stop printf("PROGRAM_STOP ");
string printf("TYPE_STRING ");
float printf("TYPE_FLOAT ");
int printf("TYPE_INT ");
boolean printf("TYPE_BOOL ");
direction printf("TYPE_DIRECTION ");
return printf("RETURN ");
if printf("IF ");
else printf("ELSE ");
true printf("TRUE ");
false printf("FALSE ");
east printf("DIR_EAST ");
west printf("DIR_WEST ");
north printf("DIR_NORTH ");
south printf("DIR_SOUTH ");
northeast printf("DIR_NORTHEAST ");
northwest printf("DIR_NORTHWEST ");
souteast printf("DIR_SOUTHEAST ");
southwest printf("DIR_SOUTHWEST ");
while printf("WHILE_LOOP ");
list printf("LIST_INIT ");
print printf("PRINT_STATEMENT ");
scan printf("SCAN_STATEMENT ");
function printf("FUNC_BEGN ");
or printf("OR ");
and printf("AND ");
not printf("NOT ");
move printf("MOVE_FUNC ");
turn printf("TURN_FUNC ");
grab printf("GRAB_FUNC ");
release printf("RELEASE_FUNC ");
readData printf("READ_FUNC ");
sendData printf("SEND_FUNC ");
{letters} printf("VARIABLE ");
{integer} printf("INTEGER ");
, printf("COMMA ");
\( printf("LP ");
\) printf("RP ");
\{ printf("LC ");
\} printf("RC ");
\[ printf("LSQ ");
\] printf("RSQ ");
\; printf("SEMI_COL ");
\= printf("ASGN_OP ");
#.+\#  printf("COMMENT ");
\" printf("QUOTE");
