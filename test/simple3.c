int *x, y;
void g()
{
		    int g=1;
			x=&g;
		        
}
void f()
{
			int f=1;
			x=&f;			
		        g();
					        
}
int test()
{
		        int *a;
				a=&y;
				x=&y;
				f();
				return 0;
}

