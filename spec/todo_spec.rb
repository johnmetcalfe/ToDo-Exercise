require 'rspec'
require 'date'

describe ToDo do

  let (:todo1) {ToDo.new("Remember the Milk")}
  let (:todo2) {ToDo.new("Remember the Cheese")}

  before(:each) { ToDo.class_variable_set :@@todo, [] }

  it "Initialize a todo array with a Todo and the date today" do

    expect(todo1.title.downcase).to eq "remember the milk"
    expect(todo1.due_date).to be_a(Date)
    expect(todo1.due_date).to eq Date.today + 1

  end

  it "List all the todos as an array" do
    expect(ToDo.all).to eq [todo1]
  end

  it "List most recent to do" do
    a = todo1
    b = todo2
    expect(ToDo.last).to eq b
  end

  it "Find a todo that contains a word" do
    a = todo1
    b = todo2
    expect(ToDo.find_contains("Milk")).to eq [a]
  end

  it "Find a todo that exactly matches a string" do
    a = todo1
    b = todo2
    expect(ToDo.find_exactly("Remember the Cheese")).to eq [b]
  end

  it "Should return the title of a todo" do
    a = todo1
    expect(a.title).to eq "Remember the Milk"
  end

  it "Should return the due_date of a todo" do
    a = todo1
    expect(a.due_date).to eq Date.today + 1
  end

  it "Should allow the user to input a new title for their to do item" do
    a = todo1
    a.title=("Remember this changed")
    expect(a.title).to eq "Remember this changed"
  end

  it "Should allow the user to update the due date" do
    a = todo1
    a.due_date=("25/09/2016")
  end

end
