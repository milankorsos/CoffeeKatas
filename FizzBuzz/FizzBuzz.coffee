
class window.FizzBuzz

	constructor: () ->
		@Min = 1
		@Top = 100
		@Delimiter = " "
		@Fizz = "Fizz"
		@Buzz = "Buzz"
		@NumberIsOutOfRange = "NumberIsOutOfRange"

	do: () =>
		str = ""
		for i in [1..@Top]
			str += @singleDo(i) + @Delimiter
		return str.trim()

	singleDo: (number) =>
		if number > @Top or number < @Min
			throw @NumberIsOutOfRange

		str = ""
		if number%3 == 0
			str += @Fizz
		if number%5 == 0
			str += @Buzz
		if str == ""
			str = number.toString()
		return str
