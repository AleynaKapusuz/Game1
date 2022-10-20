import 'dart:io';
import 'dart:math';

enum Move {rock, paper, scissors} // Create a list of play options
void main() {
    var value;
    do{
    print("Make a choose : Rock, Paper,Scissors , exit to -1");
    value = stdin.readLineSync(); // User to enter the value.
    var pc = Random().nextInt(3); // Assign a random value up to 3.
    var pcmove = Move.values[pc]; // Assign a random value from a list.
    var player;
    if(value =='paper' && value == 'scissors' && value == 'rock'){
        if(value == 'paper'){
            player = Move.paper;
        }else if(value == 'scissors'){
            player = Move.scissors;
        }else{
            player = Move.rock;
        }

        if(player == pcmove){
        }else if(player == Move.rock && pcmove == Move.scissors){ //Rock is win.
            print("Congratulation, Rock is win.");
        }else if(player == Move.paper && pcmove == Move.rock){//Paper is win.
            print("Congratulation, Paper is win.");
        }else if(player == Move.scissors && pcmove == Move.paper){//Scissors is win.
            print("Congratulation, Scissors is win.");
        }else{
            print("You lose");
        }
    }else if(value != 'q'){ // If it enters an undefined value, enter it again.
        print("Enter the valid value.");
    }
    }while(value == 'q'); //Exit to game.
}