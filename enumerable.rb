public
def my_each
	return self unless block_given?
	for i in self 
		yield(i)
	end
end

public
def my_each_with_index
	return self unless block_given?
	for i in self
		yield(i, self.index(i))
	end
end

public
def my_select
	return self unless block_given?
	for i in self
		if(yield(i) == true)
			print(i)
		end
	end
end

public
def my_all?
	return true unless block_given?
	counter = 0
	for i in self
		if(yield(i) == true)
			counter += 1
		end
	end
	if(counter == self.length)
		return true
	else return false
	end
end

public
def my_any?
	return true unless block_given?
	for i in self
		if(yield(i) == true)
			return true
		else return false
		end
	end
end

public
def my_none?
	return true unless block_given?
	for i in self
		if(yield(i) == true)
			return false
		end
	end
	return true
end