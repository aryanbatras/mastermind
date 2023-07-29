
arr = [ '1', '2', '3', '4', '5', '6', '7', '8', '9' ]
random_arr = [arr.sample, arr.sample, arr.sample, arr.sample]
code = random_arr.join('')


def guess_game(random)
player_arr = ''

    @guess_time.times do
        print "\n Guess "
        player_input = gets.chomp
        player_arr = player_input.split('')
        
        arr_same_number = [ '-', '-', '-', '-']
        arr_0 = false
        arr_1 = false
        arr_2 = false
        arr_3 = false

        if random[0] == player_arr[0]
            arr_same_number[0] = 'o'
            arr_0 = true
        end
        if random[1] == player_arr[1]
            arr_same_number[1] = 'o'
            arr_1 = true
        end
        if random[2] == player_arr[2]
            arr_same_number[2] = 'o'
            arr_2 = true
        end
        if random[3] == player_arr[3]
            arr_same_number[3] = 'o'
            arr_3 = true
        end

        if random.include?(player_arr[0]) == true && arr_0 == false
            arr_same_number[0] = 'x'
        end
        if random.include?(player_arr[1]) == true && arr_1 == false
            arr_same_number[1] = 'x'
        end
        if random.include?(player_arr[2]) == true && arr_2 == false
            arr_same_number[2] = 'x'
        end
        if random.include?(player_arr[3]) == true && arr_3 == false
            arr_same_number[3] = 'x'
        end

        puts arr_same_number.join('')

        break if random == player_arr
    end

    if random == player_arr
        print "\n
        You decrypted the code \n
        And saved humanity \n \n"
    else 
        print "\n
        You lost to the humanity \n
        And machines have found you \n \n"
    end
end



def play
    print "\n \n"

    print " \n 
    Far in future, Machines have taken over humanity. \n
    Humans have done everything possible to stop the machines but they are too powerful. \n
    Humans have found that the only way to save humanity is to decrypt their self-destruction code. \n
    You are a professional code decrypter and you found out that this code is 4 digit long. \n
    But code decrypt machine can only guess few times otherwise machines will find out. \n
    Do you have what it takes to save humanity by guessing the code? \n"
    print "\n \n"
    print "\n Rules => 4 digit code & few guesses \n
        x means same num but not pos \n
        o means same num and pos \n \n"

    print "Press 1 to select Easy mode => 12 guesses \n"
    print "Press 2 to select Hard mode => 6 guesses \n"
    print "Press 3 to select Luck mode => 3 guesses \n"

    print "Choose "
    game_start = gets.chomp.to_i
  
    if game_start == 1 
        @guess_time = 12
    elsif game_start == 2
        @guess_time = 6
    elsif game_start == 3
        @guess_time = 3
    else 
        print "\n WRONG INPUT \n"
    end

end

play
guess_game(random_arr)