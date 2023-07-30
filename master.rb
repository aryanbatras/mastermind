


class CodeBreaker

    def initialize
        play_code_breaker
        guess_game
    end

    

    def play_code_breaker
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


    def guess_game
        player_arr = ''
        arr = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' ]
        random = [arr.sample, arr.sample, arr.sample, arr.sample]
        code = random.join('')

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
            Code is #{code} \n
            You lost to the humanity \n
            And machines have found you \n \n"
        end
    end

end



class CodeMaker

    def initialize
        play_code_creator
        code_creator
    end

    def play_code_creator

        print "\n \n 
        Some years ago, \n
        Humans created a self defence code \n
        And machines tried to decrypt this \n
        Machines too had few guesses \n"

        print "\n
        Rules => 4 digit code | Machines guess \n
                 x means same num but not pos \n
                 o means same num and pos \n \n"

        print "\n
        How many guesses can Machines have? \n"

        print "\n
        Press 1 to select Easy Mode => 12 Machine guesses \n
        Press 2 to select Hard Mode => 24 Machine guesses \n
        Press 3 to select Luck Mode => 49 Machine guesses \n
        Choose  "

        code_creator_start = gets.chomp.to_i

        if code_creator_start == 1
            @code_creator_guesses = 12
        elsif code_creator_start == 2
            @code_creator_guesses = 24
        elsif code_creator_start == 3
            @code_creator_guesses = 49
        end
    end

    def code_creator
        print "\n
        Create a 4 digit master code here \n
        Code "

        player_code = gets.chomp.split('') 
        arr = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
        arr_same0 = false
        arr_same1 = false
        arr_same2 = false
        arr_same3 = false
        comp_arr = []

        @code_creator_guesses.times do 
            arr_same = [ '-', '-', '-', '-']
            if player_code.include?(comp_arr[0]) == true
                arr_same[0] = 'x'
            end
            if player_code.include?(comp_arr[1]) == true
                arr_same[1] = 'x'
            end
            if player_code.include?(comp_arr[2]) == true
                arr_same[2] = 'x'
            end
            if player_code.include?(comp_arr[2]) == true
                arr_same[2] = 'x'
            end
            
            if player_code[0] == comp_arr[0]
            arr_same[0] = 'o'
            arr_same0 = true
            end
            if player_code[1] == comp_arr[1]
                arr_same[1] = 'o'
                arr_same1 = true
            end
            if player_code[2] == comp_arr[2]
                arr_same[2] = 'o'
                arr_same2 = true
            end
            if player_code[3] == comp_arr[3]
                arr_same[3] = 'o'
                arr_same3 = true
            end
                
            if  arr_same0 == false
                arr0 = arr.sample
            elsif arr_same0 == true
                arr0 = player_code[0]
            end
            if  arr_same1 == false
                arr1 = arr.sample
            elsif arr_same1 == true
                arr1 = player_code[1]
            end
            if  arr_same2 == false
                arr2 = arr.sample
            elsif arr_same2 == true
                arr2 = player_code[2]
            end
            if  arr_same3 == false
                arr3 = arr.sample
            elsif arr_same3 == true
                arr3 = player_code[3]
            end

            puts arr_same.join('')
            comp_arr = [arr0, arr1, arr2, arr3]
            print "\n Guess #{comp_arr.join('')} \n"
            break if player_code == comp_arr
        end

        if player_code == comp_arr
            print "\n \n
            You lost to the humanity \n
            Machines decrypted the code \n
            "
        else 
            print "\n \n
            You saved the humanity \n
            Machines failed to decrypt the code \n
            "
        end
    end
end

def game    

    print "\n Do you wanna be code breaker or code maker? \n "
    print "\n
    Press 1 to select CODE BREAKER Mode \n
    Press 2 to select CODE MAKER Mode \n"

    game_choose = gets.chomp.to_i

    if game_choose == 1
        code_breaker = CodeBreaker.new
    elsif game_choose == 2
        code_maker = CodeMaker.new
    end
end

game
