
sc = new StringCalculator()

describe "Add(string numbers) adds numbers", ->

  it "Add('') returns 0", ->

    result = sc.Add("")
    expect(result).to.be.equal 0


  it "Add('1') returns 1", ->

    result = sc.Add("1")
    expect(result).to.be.equal 1


  it "Add('1,2') returns 3", ->

    result = sc.Add("1,2")
    expect(result).to.be.equal 3


  it "Add('1,9,17') returns 27", ->

    result = sc.Add("1,9,17")
    expect(result).to.be.equal 27

  it "Add('1\n2,3') returns 6", ->

    result = sc.Add("1\n2,3")
    expect(result).to.be.equal 6

  it "Add('1\n,3') throws InvalidArgumentError", ->

    expect(-> sc.Add("1\n,")).to.throw "InvalidArgumentError"

  it "Add('-1') throws 'negatives not allowed -1'", ->

    expect(-> sc.Add("-1")).to.throw "negatives not allowed -1."

  it "Add('-1,5,-7') throws 'negatives not allowed -1,-7'", ->

    expect(-> sc.Add("-1,5,-7")).to.throw "negatives not allowed -1,-7."
