enums = File.open('enums.rb').read

b = binding

begin
  b.eval(enums)
rescue Exception => exc
  puts exc
end

describe "Enums #4" do
  begin
    darling_children = b.eval('darling_children')
  rescue Exception
  end

  it "The .each enumerator is used" do
    expect(enums.scan('.each').length).to be > 1
  end

  it "Each child a  has a full_name with Darling in it" do
    expect(darling_children.all?{|child| child[:full_name].include?('Darling')}).to eq(true)
  end
end

describe "Enums #5" do
  begin
    older_ages = b.eval('older_ages')
  rescue Exception
  end

  it "The .map enumerator is used" do
    expect(enums.scan('.map').length).to be > 1
  end

  it "Each age has been increased by 30 years" do
    expect(older_ages.all?{ |age| age > 30 }).to eq(true)
  end
end
