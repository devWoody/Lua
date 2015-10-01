print("Welcome to the game")

-- Explicitly set the input variable to an empty string
-- because it's used in the while loop.
input = ""

inv = {"coin", "sword", "armor"}

-- Prints out everything in our inventory
function get_inv()
    for i,v in pairs(inv) do
        print(i .. " " .. v)
    end
end

-- Adds a new item to our inventory
function push_inv(item)
    table.insert(inv, item)
end

-- Removes an item from our inventory that matches the item string
function pop_inv(item)
    for i, v in pairs(inv) do
        if v == item then
            table.remove(inv, i)
        end
    end
end

-- invalid command. Print error.
function err_command()
    print("You didn't write a valid command...")
end

-- Read input and return it.
function get_input()
    print("What do you want to do?")
    i = io.read() -- Get what the user types.
    return i
end

function room(exit_command, t)
    input = ""
    while input ~= exit_command do
        input = get_input()
        valid = false

        for k,v in pairs(t) do
            if input == k then
				if type(v) == "string" then
					print(v)
				else
					v()
				end
                valid = true
            end
        end

        if input == "inv" then
            get_inv()
        elseif valid == false then
            err_command()
        end
    end
end

room_com = {inspect = "You're in a cave. There is an exit.", exit = "You leave the cave."}
room("exit", room_com)

room_com2 = {
inspect = "You're on a cliff. There is a path."}

input = ""
while input ~= "follow path" do
    input = get_input()
	print("You follow the path")
	print("A troll attacks you with an axe")
	print("What do you want to do? (run away, attack)")
	tinput = io.read()
	if tinput == "attack" then
		print("You fight the troll and win")
	elseif tinput == "run away" then
		print("You turn your back to flee but it hits you in the back and takes your coin")
		pop_inv("coin")
	else
		print("You stand there. It stabs you. You die. Game over")
        os.exit()
	end
end

input = ""

have_key = false

-- This statement means: while this statement: "input is equal to 'open gate' and have_key is true" is not met, loop.
while not (input == "open gate" and have_key == true) do
    input = get_input()

    if input == "inspect" then
        -- If we don't have the key, let us know that it's on the ground.
        if have_key == false then
            print("There is a path behind you. There is a locked gate in front of you. There is a key on the ground.")
        else
            -- If we do have the key, don't say there's a key on the ground.
            print("There is a path behind you. There is a locked gate in front of you.")
        end
    elseif input == "grab key" then
        -- We now have the key. Set the variable to true.
        have_key = true
        print("You got the key")
    elseif input == "open gate" then
        if have_key == false then
            print("It's locked")
        elseif have_key == true then
            print("You open the gate and leave.")
        end
    elseif input == "pick up magic" then
        print("You obtain magic")
        push_inv("MAGIC")
    elseif input == "inv" then
        get_inv()
    else
        err_command()
    end
end

-- VICTORY!
print("You escaped.")
