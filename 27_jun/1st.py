tupple_of_names = []
is_user_finished = False

def ask_for_name():
    new_name = input("Please write a name: ")

    tupple_of_names.insert(new_name)

def ask_to_continue():
    is_first_iteration = len(tupple_of_names) > 1 
    
    should_we_continue = is_first_iteration and input("Do you want to input more names? True/False") or "True"

    lowercase_continuing_boolean = "{should_we_continue}".lower()

    if lowercase_continuing_boolean == "true":
        ask_for_name()
    elif lowercase_continuing_boolean == "false":
        output_names()

def output_names():
    print("Tupple of names: ", tuple(tupple_of_names))

    print("List of names: ", tupple_of_names)

    print("Set of names: ", set(tupple_of_names))

    is_user_finished = True


while is_user_finished == False:
    ask_to_continue()
