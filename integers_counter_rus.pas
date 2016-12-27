Program integers_counter;

var x, n, p, zero, upto, sump, sumn, counter: integer;

begin
	n    	:= 0;
	p    	:= 0;
	zero 	:= 0;
	sumn 	:= 0;
	sump 	:= 0;
	counter := 0;

	write('Введіть кількість чисел: ');
	readln(upto);  {Максимальна килькисть чисел}
	writeln('Введіть ваші числа (цілі додатні або від"ємні числа)');
  
	repeat
		readln(x);
		{Якщо введене число дорівнює 0, то додамо 1 до кількості нулів}
		if x = 0 then inc(zero);
		{Якщо введене число менше 0, то додамо 1 до кількості від'ємних
		чисел, і додамо це число до сумми від'ємних чисел}
		if x < 0 then
			begin
				inc(n);
				sumn := sumn + x;
			end;
		{Якщо введене число більше 0, то додамо 1 до кількості додатніх
		чисел, і додамо це число до сумми додатніх чисел}
		if x > 0 then
			begin
				inc(p);
				sump := sump + x;
			end;
		inc(counter);    {Лічільник циклу}
	until (counter = upto);

	writeln('Кількість додатніх чисел: ', p);
	writeln('Кількість від"ємних чисел: ', n);
	writeln('Кількість нулів: ', zero);
	{Якщо сумма додатніх чисел більше нуля, то надрукувати сумму}
	if sump > 0 then 
	  writeln('Сумма додатніх чисел: ', sump);
  {Якщо сумма від"ємних чисел менше нуля, то надрукувати сумму}
	if sumn < 0 then 
	  writeln('Сумма від"ємних чисел: ', sumn);
	readln
end.
