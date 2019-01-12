//
//  InputHandler.h
//  Pig Latin
//
//  Created by Yilei Huang on 2019-01-11.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
-(NSString *)convertToString:(NSString *)input;

-(NSString *)convertToLatin:(NSString *)input;
@end

NS_ASSUME_NONNULL_END
