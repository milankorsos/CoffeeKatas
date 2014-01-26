
class window.StringCalculator

	constructor: () ->

	Add: (string) =>

		Delimiter = [",", "\n"]
		DelimiterRegexp = new RegExp(Delimiter.join('|'), 'g')

		val = 0
		negatives = ""

		if string
			nums = string.split(DelimiterRegexp)
			for num in nums

				if !num then throw "InvalidArgumentError"
				number = parseInt(num, 10)

				if number < 0
					negatives += number + ","

				else
					val = val + number

		if negatives
			throw "negatives not allowed " + negatives.substr(0, negatives.length-1) + "."

		return val
