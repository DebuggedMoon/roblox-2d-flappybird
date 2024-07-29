
return function(numStart: number, numEnd: number): number

	assert(numStart < numEnd, "Range starting number must be smaller than its ending numbers!")

	return math.random() * (numEnd - numStart)
end