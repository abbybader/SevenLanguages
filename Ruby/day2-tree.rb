class Tree
  attr_accessor :children, :node_name

  def initialize(tree={})
    @node_name, kids = tree.first
    @children = []
    kids.each_pair {|n, c| 
      children << Tree.new( { n => c } ) 
    }
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new( 
  { "grandfather" => 
    { 
      "dad" => 
      { 
  "c1" => {}, "c2" => {} 
      }, 
      "uncle" => 
      { 
	"c3" => {}, "c4" => {} 
      } 
    }
  }
 )

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name }
