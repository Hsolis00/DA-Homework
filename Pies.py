pies = ["Pecan", "Apple Crisp", "Bean", "Banoffee", "Black Bun", "Blueberry", "Buko", "Burek", "Tamale", "Steak"]

print("Welcome to the House of Pies! Here are our pies: \
(1) Pecan, (2) Apple Crisp, (3) Bean, (4) Banoffee,  \
(5) Black Bun, (6) Blueberry, (7) Buko, (8) Burek,  (9) Tamale, (10) Steak")

selected = input("Which pie would you like?")

for pie in pies:
    print(str(pies.index(pie)) + " " + pie)

