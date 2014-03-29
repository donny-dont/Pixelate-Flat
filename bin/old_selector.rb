if ARGV.length == 0
	print ("No filename specified")
	abort
end

filename = ARGV[0]
lines = IO.readlines(filename)
result = ""
lines.each do |line|
	line = line.sub('/shadow/', '^')
	line = line.sub('/shadow-deep/', '^^')
	result = "#{result}#{line}"
end

File.open(filename, 'w') do |file|
  file.puts result
end
