class Foo
  def each
    return enum_for(:each) unless block_given?

    3.times do |x|
      yield x + 1
    end
  end
end

e = Foo.new.each # => #<Enumerator: #<Foo:0x00000102801260>:each>
e.next # => 1
e.next # => 2
e.next # => 3

e = Enumerator.new() do |y|
  a = 1
  loop do
    y << a
    a = a + 1
  end
end

e.take(10) # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
