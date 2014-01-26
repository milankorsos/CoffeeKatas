
fizz = new FizzBuzz()

describe "Print numbers from 1 to 100", ->

  it "First 10 digits from 1 to 5", ->
    result = fizz.do()
    arr = result.split(fizz.Delimiter)
    expect(arr[0]).to.equal("1")
    expect(arr[1]).to.equal("2")
    expect(arr[2]).to.equal(fizz.Fizz)
    expect(arr[3]).to.equal("4")
    expect(arr[4]).to.equal(fizz.Buzz)

  it "Last 10 digits from 95 to 100", ->
    result = fizz.do()
    arr = result.split(fizz.Delimiter)
    expect(arr[95]).to.equal(fizz.Fizz)
    expect(arr[96]).to.equal("97")
    expect(arr[97]).to.equal("98")
    expect(arr[98]).to.equal(fizz.Fizz)
    expect(arr[99]).to.equal(fizz.Buzz)


  it "Print FizzBuzz instead of number which is divisible by both 3 and 5", ->
    result = fizz.do()
    arr = result.split(fizz.Delimiter)
    expect(arr[14]).to.equal(fizz.Fizz + fizz.Buzz)

  it "Check number", ->
    result = fizz.singleDo(1)
    expect(result).to.equal("1")

  it "Check Fizz", ->
    result = fizz.singleDo(3)
    expect(result).to.equal("Fizz")

  it "Check Buzz", ->
    result = fizz.singleDo(5)
    expect(result).to.equal("Buzz")

  it "Check FizzBuzz", ->
    result = fizz.singleDo(15)
    expect(result).to.equal("FizzBuzz")

  it "Check if > 100 then null", ->
    expect(->fizz.singleDo(200)).to.throw(fizz.NumberIsOutOfRange)

  it "Check if < 1 then null", ->
    expect(->fizz.singleDo(0)).to.throw(fizz.NumberIsOutOfRange)
