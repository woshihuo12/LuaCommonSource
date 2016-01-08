local Queue = {}

Queue.__index = Queue

function Queue.new()
	local queue = {first = 0, last = -1, n = 0}
	setmetatable(queue, Queue)
	return queue
end

function Queue:lpush(value)
	local first = self.first - 1
	self.first = first
	self[first] = value
	self.n = self.n + 1
end

function Queue:rpush(value)
	local last = self.last + 1
	self.last = last
	self[last] = value
	self.n = self.n + 1
end

function Queue:lpop()
	local first = self.first
	if first > self.last then return nil, true end
	local value = self[first]
	self[first] = nil
	self.first = first + 1
	self.n = self.n - 1
end

function Queue:rpop()
	local last = self.last
	if self.first > last then return nil, true end
	local value = self[last]
	self[last] = nil
	self.last = last - 1
	self.n = self.n - 1
	return value
end

function Queue:size()
	return self.n
end

function Queue:print()
	for i= self.first, self.last do
		print(self[i])
	end
end

if false then
	q = Queue.new()
	q:rpush("a")
	q:rpush("b")
	q:rpush("c")
	q:print()
end

return Queue