void test(void)
{
	        int a, b, c, i;
		        int *p1, *p2, **p3;

			        /* [] */
			        p1 = &a;
				        /* [(p1,a,D)] */
				        p3 = &p1;
					        /* [(p1,a,D), (p3,p1,D)] */
					        p2 = *p3;
						        /* [(p1,a,D), (p2,a,D), (p3,p1,D)] */
						        if (i > 0)
								                /* [(p1,a,D), (p2,a,D), (p3,p1,D)] */
								                p1 = &b;
							        else
									                /* [(p1,a,D), (p2,a,D), (p3,p1,D)] */
									                p1 = &c;

								        /* [(p1,b,P), (p1,c,P), (p2,a,D), (p3,p1,D)] */
								        return;
}
