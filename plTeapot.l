numbers	([0-9]+|[0-9]*\.[0-9]+)
wordOfNumbers	(zero|one|two|three|four|five|six|seven|eight|nine|ten|eleven|tewelve|thirteen|fourteen|fifteen|sixteen|seventeen|eighteen|nineteen|twenty|thirty|forty|fifty|sixty|seventy|eighty|ninety|hundred|thousand|million|billion)

%{	#define PI 3.14159265
	#include <math.h>
	#include "y.tab.h"
	#include "switchs.h"	//external library for comparing "String", in C there is no "String"
%}

%%

{wordOfNumbers}	{yylval.val=word2number(); return num;}
{numbers}	{yylval.val = atof(yytext); return num;}


point return POINT;
minus return MINUS_SIGN;
 /* Basic Mathematical Operators*/
equal return EQUAL;
sum return	SUM;
substract return SUBSTRACT;
multiply	return MULTIPLY;
divide	return DIVIDE;
 /* Trigonometric Operators*/
sin return SIN;
cos return COS;
tan return TAN;
ln return LN;
sqrt return SQRT;
exp return EXP;
pi return PI;

	/* Closing command*/
"out" {printf("Program is closing...\n");exit(0);}

[\t];
\n	return 0;
.	return yytext[0];


%%
/*Converting function */
int word2number(){

	char temp[20];
	strcpy(temp,yytext);

	switchs(temp){
		cases("zero") return 0;
		break;
		cases("one") return 1;
		break;
		cases("two") return 2;
		break;
		cases("three") return 3;
		break;
		cases("four") return 4;
		break;
		cases("five") return 5;
		break;
		cases("six") return 6;
		break;
		cases("seven") return 7;
		break;
		cases("eight") return 8;
		break;
		cases("nine") return 9;
		break;
		cases("ten") return 10;
		break;
		cases("eleven") return 11;
		break;
		cases("twelve") return 12;
		break;
		cases("thirteen") return 13;
		break;
		cases("fourteen") return 14;
		break;
		cases("fifteen") return 15;
		break;
		cases("sixteen") return 16;
		break;
		cases("seventeen") return 17;
		break;
		cases("eighteen") return 18;
		break;
		cases("nineteen") return 19;
		break;
		cases("twenty") return 20;
		break;
		cases("thirty") return 30;
		break;
		cases("forty") return 40;
		break;
		cases("fifty") return 50;
		break;
		cases("sixty") return 60;
		break;
		cases("seventy") return 70;
		break;
		cases("eighty") return 80;
		break;
		cases("ninety") return 90;
		break;
		cases("hundred") return 100;
		break;
		cases("thousand") return 1000;
		break;
		cases("million") return 1000000;
		break;
		cases("billion") return 1000000000;
		break;
	}switchs_end;
}


