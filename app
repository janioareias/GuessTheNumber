import random

print("Boas vindas ao Guess The Number!\nEsse programa gera um número pseudorandômico de 1 a 9 e é sua função adivinhá-lo.");

while True:
    # Gera o número aleatório
    num = random.randint(1,9);
    tries = 0;
    
    while True:
        guess = int(input("\nDigite um número entre 1 e 9: "));

        # Verifica se o palpite é um número válido
        if guess < 1 or guess > 9:
            print("\nPor favor, digite um número entre 1 e 9. ");
            continue
        
        tries += 1;

        if guess == num:
            print(f"\nParabéns! O número era {num}. Você acertou em {tries} tentativas.")
            break
        if guess < num:
            print(f"Seu palpite foi {guess}. O número é maior.");
        else:
            print(f"Seu palpite foi {guess}. O número é menor.");

    replay = input("Você deseja jogar novamente? (s/n) ");

    if replay != "s" and replay != "n":
                print("Por favor, digite apenas a letra s ou n.");
                continue
    if replay.lower() == "n":
        print("\nObrigado por jogar!");
        break
