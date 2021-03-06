package meals_pkg is
	type meal is (breakfast, lunch, dinner, midnight_snack);
end meals_pkg;

use work.meals_pkg.all;

entity ej14 is
port
(
	previous_meal : in meal;
		  next_meal: out meal
);
end ej14;

architecture maxpld of ej14 is
begin
	with previous_meal select
		next_meal <=	breakfast	when dinner | midnight_snack,
							lunch			when breakfast,
							dinner		when lunch;
end maxpld;