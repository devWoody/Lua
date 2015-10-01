print("What is your name?")
name=io.read()
	--Used to get users name
name=name:upper()
	--Makes users name uppercase
print("Hello " .. name)
print("How old are you?")
age=io.read()
	--Used to get users name
print("Your name is " .. name .. " and you are " .. age .. " years old.")
print("What month were you born?")
month=io.read()
	--Gets the users birth month
month=month:upper()
	--Makes users month uppercase
print("What year were you born?")
year=io.read()
	--Gets users birth month
print("What day were you born?")
day=io.read()
	--Gets users birth day
print("You were born on " .. month .. " " .. day .. " " .. year )
io.read()
