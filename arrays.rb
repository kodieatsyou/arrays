module Arrays

	def middles(array1, array2)
		return [array1[1], array2[1]]
	end

	def max(arr)
		max = arr[0]
		arr.each do |n|
		max = n if n > max
		end
		return max
	end

	def lucky13?(arr)
		!arr.include?(1) && !arr.include?(3)
	end

	def repeat_separator(word, sep, count)
		str = ""
		str = str + "#{word}#{sep}" * (count - 1) + word
		str
	end

	def same_ends?(arr, n)
		0.upto(n) do |i|
			if arr[i] == arr[-n + i]
				return true
			else
				return false
			end
		end
	end
	
	def starry?(str)
		index = 0
		0.upto(str.length - 1) do |n|
			index = str.index('*', n)
			if n == 0 || n == str.length - 1
			next
			elsif str[index - 1] == str[index + 1]
			return true
			else
			return false
			end
		end
	end

	def plus_it(word, token)
		arr = word.split(//)
		index = 0
		0.upto(word.length - 1) do |n|
		index = word.index(token, n)
		arr[n] = '+' if n != index
		end
		arr.join
	end

	def zero_front(arr)
		count = arr.count(0)
		arr.delete(0)
		for n in 1..count
		arr.unshift(0)
		end
		arr
	end

	def ten_run(arr)
		n = 0
		index = arr.index { |x| x % 10 == 0 }
		for i in index..(arr.length - 1)
			if (arr[i] % 10 == 0)
				n = arr[i]
			else
			arr[i] = n
			end
		end
		arr
	end

	def max_span(arr)
		span = 0
		for n in 0..(arr.length - 1)
			new = ( arr.length - arr.reverse.index(arr[n]) ) - n
			span = new if new > span
		end
		span
	end

end
