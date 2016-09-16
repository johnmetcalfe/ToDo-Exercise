class ToDo

  attr_accessor :title, :due_date
  attr_reader :todo

  @@todo = []

  def initialize(title, due_date = nil)

    @title = title
    if due_date.nil?
      @due_date = Date.today + 1
    else
      @due_date = Date.parse(due_date)
    end
    @@todo << self

  end

  def self.all
    @@todo
  end

  def self.last
    @@todo.last
  end

  def self.find_contains(query)
    @@todo.select{|s| s.title.include? query }
  end

  def self.find_exactly(query)
    @@todo.select{|s| s.title == query }
  end

  def due_date=(date)
    @due_date = Date.parse(date)
  end

end
