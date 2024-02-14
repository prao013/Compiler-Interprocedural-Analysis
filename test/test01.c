int *x, y;
void g(int *n)
{
	            /* [(n,y,D), (x,y,D)] */
	        return;
}
void f(int *m)
{
	            /* [(m,y,D), (x,y,D)] */
	        g(m);
		            /* [(m,y,D), (x,y,D)] */
		        return;
}


int test()
{
	        int *a;
		        a=&y;
			            /* [(a,y,D)] */
			        x=&y;
				            /* [(a,y,D), (x,y,D)] */
				        f(a);
					            /* [(a,y,D), (x,y,D)] */
					        return 0;
}


