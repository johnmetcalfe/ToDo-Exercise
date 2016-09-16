require 'rspec'


describe ToDo do

  let (:todo1) {ToDo.new("Remember the Milk", Date.today + 1)}

  it "Initialize a todo with a Todo and the date today" do

    expect(todo1.title).to eq "Remember the Milk"
    expect(person1.dob).to be_a(Date)
    expect(todo1.title).to eq Date.today + 1

  end

end
