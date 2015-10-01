print("Welcome to the game")

input = ""

inv = {"coin", "sword", "armor"}

function get_inv()
	for i,v in pairs(inv) do
		print(i .. " " .. v)
	end
end

function inv_com()
	print("Invalid command")
end

function room(t)
	while input ~= "leave cave" do
		print("What would you like to do?")
		input=io.read()

		if input == "inspect" then
			print("You are in a cave.")
			print("(inspect or leave cave)")
		elseif input == "leave cave" then
			print("You leave the cave.")
			print("(inspect)")
		elseif input == "inv" then
			get_inv()
		else
			inv_com()
		end
	end
end

while input ~= "leave cave" do
	print("What would you like to do?")
	input=io.read()

	if input == "inspect" then
		print("You are in a cave.")
		print("(inspect or leave cave)")
	elseif input == "leave cave" then
		print("You leave the cave.")
		print("(inspect)")
	elseif input == "inv" then
		get_inv()
	else
		inv_com()
	end
end

input = ""
while tinput ~= "follow path" do
	tinput = io.read()
		print("You follow the path")
		print("A troll attacks you with an axe")
		print("What do you want to do? (run away, attack)")
		tinput = io.read()
	if tinput == "attack" then
		print("You fight the troll and win")
	elseif tinput == "run away" then
		print("You turn your back to flee but it hits you in the back and takes your coins")
		pop_inv("coin")
	end
end

input = ""
have_key = false

while not (have_key == true and input == "open gate") do
	print("What would you like to do?")
	input=io.read()

	if input == "inspect" then
		if have_key == false then
			print("There is a gate. A key is hidden in the grass.")
			print("(inspect or grab key)")
		elseif have_key == true then
			print("There is a gate. You have the key.")
		elseif input == "inv" then
			get_inv()
		end
	elseif input == "grab key" then
			have_key = true
			print("You grabbed the key.")
			print("inspect or open gate")
	elseif input == "open gate" then
		if have_key == true then
				print("Congradulations you've escaped.")
		elseif have_key == false then
				print("The gate is locked.")
		elseif input == "inv" then
			get_inv()
		else
			inv_com()
		end
	end
end
io.read()
