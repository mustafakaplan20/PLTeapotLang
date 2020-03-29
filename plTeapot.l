%{
#include "plTeapot.h"
%}

%%

"="|equal|EQUAL   printf("%s\t",EQUAL);
"+"|plus|PLUS printf("%s\t",PLUS);
"-"|minus|MINUS printf("%s\t",MINUS);
"x"|multiply|MULTIPLY printf("%s\t",MULTIPLY);
"/"|divide|DIVIDE   printf("%s\t",DIVIDE);
[0-9]+[0-9]*    printf("%s\t",NUMBER);
("zero"|"one"|"two"|"three"|"four"|"five"|"six"|"seven"|"eight"|"nine"|"ten"|"eleven"|"tewelve"|"thirteen"|"fourteen"|"fifteen"|"sixteen"|"seventeen"|"eighteen"|"nineteen"|"twenty"|"thirty"|"forty"|"fifty"|"sixty"|"seventy"|"eighty"|"ninety") printf("%s\t",NUMBER);
("thousand"|"million"|"billion"|"trillion"|"quadrillion"|"quintillion"|"sextillion"|"septillion"|"octillion"|"nonillion"|"decillion")    printf("%s\t",NUMBER);
";" printf("\n");

%%