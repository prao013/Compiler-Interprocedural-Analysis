void minitest1(){
	int x,y,z;
	z=x+y;
}


void test1() {
	minitest1();
	int a, b, c, e;
	e = b + c;
	if (e > 0) {
		e = a;
	} 
	else {
		a = b + c;
	}
	a = e + c;
}

void minitest2(){
	int x,y,z;
	z=x+y;
}


void test2() {
	minitest2();
	int a, b, c, d, e, f;
	a = 0;
	c = 1;
	do{ 
		c = a + 1;
		c = c * b;
		if (b > 9) {
			f = d * c;
			c = f - 3;
		} 
		else {
			a = e + 1;
			e = d / 2;
		}
	a = b;
	} while (a < 9);
	a = a + 1;
}
void minitest3(){
	int x,y,z;
	z=x+y;
}


void test3() {
	minitest3();
	int a, b, c, d, e, f;
	a = 5;
	b = 4;
	for(int i=0; i<10; i++) {
		c = a + d;
		e = c * a;
	}
	if (e > d) {
		f = d * c;
	} else {
		e = e / b;
	}
}
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
void test(){
	test1();
	test2();
	test3();
	test4();
}
