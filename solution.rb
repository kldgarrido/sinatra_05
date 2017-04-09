require 'sinatra'


def analyze(n)
	if n%2==0
		"#{n} Soy Par!"
	else
		"#{n} Soy Impar!"
	end
end


get '/' do
	my_Array = []
	i = 1
	50.times do
		my_Array.push(analyze(i))
		i+=1
	end

	erb :page, :locals => {:values => my_Array}
end


