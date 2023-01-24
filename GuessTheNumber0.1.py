import random
print("Boas vindas ao Guess The Number!\nEsse programa gera um número pseudorandômico de 1 a 9 e é sua função adivinhá-lo.");

def gerar():
    global num;
    num = random.randint(1,9);

def guessing():
    global guess;
    guess = int(input("Qual é seu palpite? "));

gerar(), guessing();

while guess > num:
    print(f"{guess}? Tente um número menor!");
    guessing();
while guess < num:
    print(f"{guess}? Tente um número maior!");
    guessing();
while guess == num:
    print(f"\nParabéns! Você acertou, o número era {num}!");
    break