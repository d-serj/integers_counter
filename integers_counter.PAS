Program integers_counter;

var x, n, p, sum: integer;

begin
	n:= 0;
	p:= 0;
	sum:= 0;

	writeln('Input positive or negative integers, 0 to end: ');

	repeat
		readln(x);
		if x < 0
		then inc(n);
		if x > 0 then
			begin
				inc(p);
				sum:= sum + x;
			end
	until (x = 0);

	writeln('Number of positive integers: ', p);
	writeln('Number of negative integers: ', n);
	writeln('Sum of positive integers is: ', sum);
	readln
end.
