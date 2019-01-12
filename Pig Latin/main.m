//
//  main.m
//  Pig Latin
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler =[InputHandler new];
        NSString *userInput=[inputHandler convertToString:@"please enter the word to convert"];
        //NSArray *array = []
        NSArray *array = [userInput componentsSeparatedByString:@" "];
        for(NSString* items in array){
            NSString *output =[inputHandler convertToLatin:items];
            NSLog(@"%@",output);
        }
        //NSLog(@"Hello, World!");
    }
    return 0;
}
