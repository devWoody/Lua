list = {}

input = ""
while input ~= "exit" do
	input = io.read()
	print("Your list:")
	for i,v in pairs(list) do
		print(i, v)
	end
	print("Command:")
	input = io.read()
	if input == "add" then
		print("What would you like to add?")
		item = io.read()
		table.insert(list, item)
	elseif input == "remove" then
		print("What would you like to remove? (by index)")
		item = io.read()
		table.remove(list, item)
	else print("Incorrect command")
	end
end
