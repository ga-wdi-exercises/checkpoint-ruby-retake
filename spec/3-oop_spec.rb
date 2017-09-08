oop = File.open('oop.rb').read

b = binding

begin
  b.eval(oop)
rescue Exception => exc
  puts exc
end

describe "OOP #6" do
  begin
    A = b.eval('Animal')
  rescue Exception
  end

  begin
    simon = A.new('brown')
  rescue Exception
  end

  it "Animal is a class" do
    expect(A).to be_a(Class)
  end

  it "Animal sets attributes and methods" do
    expect(simon.instance_variables).to include(:@color)
    expect(simon.methods).to include(:eat)
  end

  it "Animal's color is gettable but not settable" do
    expect(simon).to respond_to(:color)
    expect(simon).to_not respond_to(:color=)
  end
end

describe "OOP #7" do
  it "An instance of Animal has been created" do
    expect(b.eval('ObjectSpace.each_object(Animal).count')).to be > 1
  end
end

describe "OOP #8" do
  begin
    L = b.eval('Dog')
  rescue
  end

  begin
    simba = L.new('brown', 'lab')
  rescue
  end

  it "Dog is a class" do
    expect(L).to be_a(Class)
  end

  it "Dog inherits from Animal" do
    expect(L.superclass).to eq(Animal)
  end

  it "Dog adds a breed attribute to existing Animal attributes" do
    expect(simba.instance_variables).to include(:@breed)
    expect(simba.instance_variables).to include(:@color)
  end

  it "Dog has a bark method that returns 'bark bark'" do
    expect(simba.bark).to eq('bark bark')
  end

end

describe "OOP #9" do
  it "An instance of Dog has been created" do
   expect(b.eval('ObjectSpace.each_object(Dog).count')).to be > 1
  end
end
