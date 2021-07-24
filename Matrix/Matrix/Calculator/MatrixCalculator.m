//
//  MatrixCalculator.m
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import "MatrixCalculator.h"
#import "MatrixCalculator+SumCalculator.h"
#import "MatrixCalculator+Subtractor.h"
#import "MatrixCalculator+MultiplicationByScalar.h"

@implementation MatrixCalculator

-(NSMutableArray*) sumMatrix:(NSMutableArray *) matrixOne toMatrix:(NSMutableArray *) matrixTwo {
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    @try {
        result = [self sum:matrixOne toMatrix:matrixTwo];
        return result;
        
    } @catch (NSException *exception) {
        NSLog(@"%@", exception.reason);
    }
}

-(NSMutableArray*) subtractionMatrix: (NSMutableArray*) matrixOne
                      toMatrix: (NSMutableArray*) matrixTwo {
    @try {
        return [self subtraction: matrixOne toMatrix:matrixTwo];
     } @catch (NSException *exception) {
         NSLog(@"%@", exception.reason);
     }
}

-(NSMutableArray*) multiplyMatrix:(NSMutableArray *)matrix toScalar:(NSNumber *)scalar {
    
    NSException *nullException = [NSException exceptionWithName:@"NullException" reason:@"Passed null argument" userInfo:nil];
    
    if (matrix.count == 0 || scalar == NULL) {
        @throw nullException;
    }
    
    
    return [self multiply:matrix toScalar:scalar];
}

@end
