%{
       #include<stdio.h>
       #include<math.h>
       
       void yyerror(char *);
       int yylex(void);
       double arrangePoint();
       int checkValidity();
%}

%union				//define possible symbol type
{ double val;}
%token<val>num
%token SIN COS TAN LN EXP SQRT PI    //define tokens
%token SUM SUBSTRACT MULTIPLY DIVIDE EQUAL
%token POINT MINUS_SIGN

/*Defining the Precedence*/
%left '+' '-' SUM SUBSTRACT		//lowest precedence
%left '*' '/'	MULTIPLY DIVIDE	//highest precedence
%nonassoc uminu			//no associativity
%type<val>expr			//Sets the type for non-terminal
%%

/* Keeping the Answer */
ss: expr {printf("\n Memorized Answer = %g\n",$1);}

/* Mathematical Operations */
expr :  expr'+'expr      { $$=$1+$3; }
       |expr SUM expr       { $$=$1+$3; }
       |expr'-'expr      { $$=$1-$3; }
       |expr SUBSTRACT expr       { $$=$1-$3;}
       |expr'*'expr      { $$=$1*$3; }
       |expr MULTIPLY expr      { $$=$1*$3; }
       
       |expr'/'expr  {if($3==0){
                            printf("Divide By Zero");
                            exit(0);
                            }else $$=$1/$3;
                     }
       |expr DIVIDE expr  {if($3==0){
                            printf("Divide By Zero");
                            exit(0);
                            }else $$=$1/$3;
                     }
       |expr'='expr     {$$=checkValidity($1,$3);}
       |expr EQUAL expr     {$$=checkValidity($1,$3);}
       |'-'expr         {$$=-$2;}
       |MINUS_SIGN expr     {$$=-$2;}
       |expr POINT expr {$$=arrangePoint($1,$3);}
       |SIN'('expr')'   {$$=sin($3);}
       |COS'('expr')'   {$$=cos($3);}
       |TAN'('expr')'   {$$=tan($3);}
       |LN'('expr')'   {$$=log($3);}
       |EXP'('expr')'  {$$=exp($3);}
       |SQRT'('expr')'  {$$=sqrt($3);}
       |PI    {$$=3.14159265;}
       |num;
 	|'('expr')'      {$$=$2;}
 	
%%

/*Merging two numbers if they have point*/
double arrangePoint(double a, double b){
       float c;
       c = (float)b;
       while( c >= 1.0f ) c *= 0.1f; //moving the decimal point (.) to left most
       c = (float)a + c;
       return c; 
}
/*Controlling equality */
int checkValidity(double a, double b){
       if(a==b){
              printf("\nExpression TRUE!\n");
              return 1;
       }else{
              printf("\nExpression FALSE!\n");
              }return -1;
}

void yyerror(s)			
char *s;{
       printf("\nERROR\n");
}
int main(){
       printf("\tWelcome to Teapot Calculator\n Makes Words to Number & Proper Calculus Operations\n");
       printf("Please Write Your Perform Operations (like foursum6, 100multiplytan(60)...etc)\n");

       while(1){
              yyparse();
       }
       

}

