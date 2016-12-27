Program integers_counter;

var x, n, p, zero, sump, sumn, counter: integer;

begin
	n    	:= 0;
	p    	:= 0;
	zero 	:= 0;
	sumn 	:= 0;
	sump 	:= 0;
	counter := 1;

	writeln('Input positive or negative integers, input "x" to end: ');

	repeat
		readln(x);
		if x = 0 then inc(zero);
		if x < 0 then
			begin
				inc(n);
				sumn := sumn + x;
			end;
		if x > 0 then
			begin
				inc(p);
				sump := sump + x;
			end;
		inc(counter);
	until (counter = 10);

	writeln('Number of positive integers: ', p);
	writeln('Number of negative integers: ', n);
	writeln('Number of zeros: ', zero);
	writeln('Sum of positive integers is: ', sump);
	writeln('Sum of negative integers is: ', sumn);
	readln
end.
