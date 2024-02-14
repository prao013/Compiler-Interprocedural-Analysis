void minitest4(){
	int x,y,z;
	z=x+y;
}


void test4() {
	minitest4();
	int a,b,c,e;
	a=b=5;
	c=0;
	e=4;
	for(int i=0;i<100;i++){
		c=a-b;
		while(i+e<20){
			i=a+i;
		}
		b=c*a;
	}
}
