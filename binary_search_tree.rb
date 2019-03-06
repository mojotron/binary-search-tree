class BinarySearchTree
	class Node
		attr_accessor :value, :link_left, :link_right
		def initialize(value)
			@value = value
			@link_left = nil
			@link_right = nil
		end
	end

	attr_accessor :root
	def initialize()
		@root = nil
	end

	def print_tree(root = @root, indent = "")
    return root if root == nil
    puts indent + "|" + root.value.to_s 
    print_tree(root.link_left, indent += "\s" * 4)
    print_tree(root.link_right, indent)
  end

	def insert_node(value, root) 
    new_node = Node.new(value)
    if root == nil
      root = new_node
    elsif value <= root.value
      if root.link_left == nil
        root.link_left = new_node
      else
        insert_node(value, root.link_left)
      end
    else #value > root.value
      if root.link_right == nil
        root.link_right = new_node
      else
        insert_node(value, root.link_right)
      end
    end
    root
  end

	def insert(value)
		@root = insert_node(value, @root)
	end

	def build_tree(arr)
		arr.each { |ele| self.insert(ele)}
	end

	def breadth_first_search(target)
		visited = []
		queue = Array.new
		queue << @root
		until queue.empty?
			temp_node = queue.shift()
			visited << temp_node.value
			return [temp_node.value, visited] if temp_node.value == target
			queue << temp_node.link_left if temp_node.link_left != nil
			queue << temp_node.link_right if temp_node.link_right != nil
		end
		[nil, visited]
	end

	def depth_first_search(target)
		visited = []
		stack = Array.new
		stack << @root
		until stack.empty?
			temp_node = stack.pop()
			visited << temp_node.value
			return [temp_node.value, visited] if temp_node.value == target
			stack << temp_node.link_right if temp_node.link_right != nil
			stack << temp_node.link_left if temp_node.link_left != nil
		end
		[nil, visited]
	end

	def dfs_rec(target, root = @root)
		if root == nil
			return nil
		elsif target < root.value
			dfs_rec(target, root.link_left)
		elsif target > root.value
			dfs_rec(target, root.link_right)
		else 
			root.value
		end
	end

end

arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
bst = BinarySearchTree.new()
bst.build_tree(arr)
bst.print_tree()
p bst.breadth_first_search(67)
p bst.depth_first_search(67)
p bst.dfs_rec(67)
p bst.dfs_rec(8)
p bst.dfs_rec(12)
p bst.dfs_rec(150)



