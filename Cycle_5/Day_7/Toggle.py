state = False

print("Press enter to Toggle or 'q' to quit")

while True:
    user_in = input()

    if user_in == 'q':
        print("Exiting......")
        break

    state = not state

    if state:
        print("Led ON")
    else:
        print("Led OFF")
