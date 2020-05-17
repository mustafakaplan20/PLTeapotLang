%{
       #include<stdio.h>
       #include<math.h>
       
        void yyerror(char *);
    	int yylex(void);
           int select();
           double arrangePoint();
           int checkValidity();
%}

%union				//to define possible symbol types
{ double p;}
%token<p>num
%token SIN COS TAN LOG EXP SQRT POINT demofunc

/*Defining the Precedence and Associativity*/
 %left '+''-'			//lowest precedence
%left '*''/'			//highest precedenc
%nonassoc uminu			//no associativity
%type<p>expr			//Sets the type for non - terminal
%%

/* for storing the answer */
ss: expr {printf("\n Answer = %g\n",$1);}

/* for binary arithmatic operators */
expr :    expr'+'expr      { $$=$1+$3; }
       |expr'-'expr      { $$=$1-$3; }
       |expr'*'expr      { $$=$1*$3; }
       |expr'/'expr      {
                               if($3==0)
                               {
                                       printf("Divide By Zero");
//exit(0);
                               }
                               else $$=$1/$3;
                       }
       |expr'='expr     {$$=checkValidity($1,$3);}
       |'-'expr         {$$=-$2;}
       |'minus' expr     {$$=-$2;}
       |expr POINT expr {$$=arrangePoint($1,$3);}
       |SIN'('expr')'   {$$=sin($3);}
       |COS'('expr')'   {$$=cos($3);}
       |TAN'('expr')'   {$$=tan($3);}
       |LOG'('expr')'   {$$=log($3);}
       |EXP'('expr')'  {$$=exp($3);}
       |SQRT'('expr')'  {$$=sqrt($3);}
       |demofunc
           {$$=select();}
       |num;
 	|'('expr')'      {$$=$2;}
 	
%%

/* extern FILE *yyin; */


int select(){
       return 68;
}
double arrangePoint(double a, double b){
       float c;
       c = (float)b;
       while( c >= 1.0f ) c *= 0.1f; //moving the decimal point (.) to left most
       c = (float)a + c;
       return c; 
}
int checkValidity(double a, double b){
       if(a==b){
              printf("Expression TRUE!");
              return 1;
       }else
              printf("Expression FALSE!");
              return -1;
}


void yyerror(s)			

char *s;
{
       printf("ERROR");
}
int main()
{
       while(1){
              yyparse();
       }

}

