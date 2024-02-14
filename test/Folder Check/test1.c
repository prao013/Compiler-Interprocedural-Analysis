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

