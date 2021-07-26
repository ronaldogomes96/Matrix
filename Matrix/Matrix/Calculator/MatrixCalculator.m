//
//  MatrixCalculator.m
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import "MatrixCalculator.h"
#import "MatrixCalculator+SumCalculator.h"
#import "MatrixCalculator+MultiplicationByScalar.h"
#import "MatrixCalculator+GetColumn.h"
#import "MatrixCalculator+MeanCalculator.h"

@implementation MatrixCalculator

-(NSMutableArray*) sumMatrix:(NSMutableArray *) matrixOne toMatrix:(NSMutableArray *) matrixTwo {
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    @try {
        result = [self sum:matrixOne toMatrix:matrixTwo];
        return result;
        
    } @catch (NSException *exception) {
        @throw exception; 
    }
}

-(NSMutableArray*) multiplyMatrix:(NSMutableArray *)matrix toScalar:(NSNumber *)scalar {
    
    NSException *nullException = [NSException exceptionWithName:@"NullException" reason:@"Passed null argument" userInfo:nil];
    
    if (matrix.count == 0 || scalar == NULL) {
        @throw nullException;
    }
    
    
    return [self multiply:matrix toScalar:scalar];
}

-(NSNumber*) meanMatrix: (NSArray*) matrix {
    
    NSMutableArray *multableMatrix = [NSMutableArray arrayWithArray:matrix];
    
    //handle exceptions and mean of the rows
    NSMutableArray *newMatrix = [[NSMutableArray alloc] init];
    
    for (int i=0; i < [[matrix firstObject] count]; i++) {
        [newMatrix addObject: [self getColumn:multableMatrix atPosition:i]];
    }
    
    return [self mean:newMatrix];
}

@end
