class Node
	attr_accessor :value, :left_link, :right_link
	#node in BST has value and links to left and right child
	def initialize(value = nil)
		@value = value
		@left_link = nil
		@right_link = nil
	end
end
# --------------------------------------------

class BinarySearchTree
	attr_accessor :root

	def initialize(value = nil)
		@root = nil
	end

	def insert(value)
		if @root == nil
			return @root = Node.new(value)
		else
			
		end
				
	end
end


arr = [8,10,12,15,17,20,25]

x = BinarySearchTree.new
p x
x.insert(5)
p x



