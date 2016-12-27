Program integers_counter;

var x, n, p, zero, sump, sumn, counter: integer;

begin
	n    	:= 0;
	p    	:= 0;
	zero 	:= 0;
	sumn 	:= 0;
	sump 	:= 0;
	counter := 1;

	writeln('Введите 10 положительных или отрицательных чисел: ');

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

	writeln('Количество положительных: ', p);
	writeln('Количество отрицательных: ', n);
	writeln('Количество нулей: ', zero);
	writeln('Сумма положительных чисел: ', sump);
	writeln('Сумма отрицательных чисел: ', sumn);
	readln
end.
