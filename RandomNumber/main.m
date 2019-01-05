//
//  main.m
//  RandomNumber
//
//  Created by Artem Karmaz on 1/5/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int randomNumber = 1;
        int userGuess = 1;
        BOOL continueGuessing = YES;
        BOOL keepPlaying = YES;
        char yesNo = ' ';
        
        while (keepPlaying) {
            randomNumber = (arc4random() % 101);
            NSLog(@"The random number to huess is: %d", randomNumber);
            while (continueGuessing) {
                NSLog(@"Pick a number between 0 and 100.");
                scanf("%d", &userGuess);
                fgetc(stdin); // remove CR/LF i.e extra character
                if (userGuess == randomNumber) {
                    continueGuessing = NO;
                    NSLog(@"Correct number!");
                }
                else if (userGuess > randomNumber) {
                    NSLog(@"Your guess is too high!");
                }
                else {
                    NSLog(@"Your guess is too low!");
                }
                NSLog(@"The user guessed %d", userGuess);
            }
            NSLog(@"Play again? Y or N");
            yesNo = fgetc(stdin);
            if (yesNo == 'N' || yesNo == 'n') {
                keepPlaying = FALSE;
            }
            continueGuessing = TRUE;
        }
        
    }
    return 0;
}
