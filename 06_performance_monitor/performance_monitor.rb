def measure(number_of_times = 1)
	total_time = 0

	number_of_times.times do
	start_time = Time.now

	yield

	end_time = Time.now

	total_time += end_time - start_time
	end
	total_time/number_of_times
end