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

public
def my_count(num = nil)
	count = 0
	if(num == nil && block_given? == false)
		return self.length
	elsif(block_given? == true)
		for i in self
			if(yield(i) == true)
				count += 1
			end
		end
	end
	for i in self
		if(i == num)
			count += 1
		end
	end
	return count
end

public
def my_map()
	temp = 0
	returnArray = []
	return self unless block_given?
	for i in self
		temp = yield(i)
		returnArray << temp
	end
	return returnArray
end

public
def my_inject(num = nil)
	returnVal = self.first
	temp = returnVal

	if(num == nil && block_given?)
		for i in self
			returnVal = yield(returnVal, i)
		end
		return returnVal - temp

	elsif(block_given?)
		returnVal = num
		for i in self
			returnVal = yield(returnVal, i)
		end
		return returnVal

	elsif(block_given? == false)
		return self
	end

end