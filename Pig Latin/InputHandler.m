//
//  InputHandler.m
//  Pig Latin
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
-(NSString *)convertToString:(NSString *)input{
    NSLog(@"%@",input);
    char inputChar[255];
    fgets(inputChar,255,stdin);
    NSString *mystring = [NSString stringWithUTF8String:inputChar];
    return [mystring stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

-(NSString *)convertToLatin:(NSString *)input{
    NSArray *checkArray = @[@"a",@"e",@"i",@"o",@"u"];
   // NSArray *array = [input componentsSeparatedByString:@""];
    int k=0;
    int failedNum =0;
    NSMutableArray *finishArray =[NSMutableArray new];
    for(int i =0;i <input.length;i++){
//        [NSString stringWithUTF8String:[input characterAtIndex:i]]
        NSString *mystring =[input substringWithRange:NSMakeRange(i, 1)];
        if([checkArray containsObject:mystring]){
            if(failedNum == i){
                [finishArray addObject:mystring];
                failedNum ++;
            }
            
        }else{
            [finishArray insertObject:mystring atIndex:k];
            k++;
        }
    }
    NSString *output =[finishArray componentsJoinedByString:@""];
    return [output stringByAppendingString:@"ay"];
}
@end
