a = (1..16).to_a

a.each { |i| print " #{i}#{i % 4 == 0 ? "\n" : ','}" }

a.each_slice(4) { |i| puts i.join(', ') }

class Tree
  attr_accessor :children, :node_name
  def initialize(tree = {})
    @node_name = tree.keys[0]
    @children = tree[@node_name].collect { |k, v| Tree.new(k => v) }
  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block }
  end

  def visit
    yield self
  end
  end

ruby_tree = Tree.new('grandpa' => { 'dad' => { 'child 1' => {}, 'child 2' => {} }, 'uncle' => { 'child 3' => {}, 'child 4' => {} } })
ruby_tree.visit_all { |a| puts a.node_name }

filename = ARGV[0]
regex = ARGV[1]
File.open(filename, 'r').each do |line|
  puts line if line.include?(regex)
end
