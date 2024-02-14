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
