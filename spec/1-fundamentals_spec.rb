fundamentals = File.open('fundamentals.rb').read

b = binding

begin
  b.eval(fundamentals)
rescue Exception => exc
  puts exc
end

describe "Fundamentals #1" do
  begin
    is_rainy = b.method(:is_rainy)
  rescue Exception
  end

  it "is_rainy is a method" do
    expect(is_rainy).to be_a(Method)
  end

  it "is_rainy returns true if the weather is rainy" do
    expect(is_rainy('rainy')).to be_truthy
  end

  it "is_rainy returns false if the weather is not rainy" do
    expect(is_rainy('cloudy')).to be_falsey
  end

end

describe "Fundamentals #2" do
  begin
    town = b.eval('town')
  rescue Exception
  end

  it "Maurice has been removed from the town residents" do
    expect(town[:residents]).to_not include('Maurice')
  end

  it "Maurice has been added to the castle guests" do
    expect(town[:castle][:other_residents]).to include('Maurice')
  end
end

describe "Fundamentals #3" do
  it "A loop is used" do
    expect(fundamentals.scan(/for|while|until|loop do|.times/).length).to be > 0
  end

  it "The loop prints each friend to the terminal" do
    expect {
      begin
        eval(fundamentals)
      rescue Exception
      end
    }.to output(/instructor/).to_stdout
  end
end
