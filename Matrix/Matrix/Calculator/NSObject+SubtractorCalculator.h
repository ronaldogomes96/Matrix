//
//  NSObject+SubtractorCalculator.h
//  Matrix
//
//  Created by Ronaldo Gomes on 23/07/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (SubtractorCalculator)

-(NSMutableArray*) subtraction: (NSMutableArray*) matrixOne
              toMatrix: (NSMutableArray*) matrixTwo;

@end

NS_ASSUME_NONNULL_END
