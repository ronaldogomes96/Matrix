//
//  MatrixCalculator.h
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum Axis {
    x = 0,
    y = 1
};


@interface MatrixCalculator : NSObject

-(NSMutableArray*) sumMatrix: (NSMutableArray*) matrixOne
                    toMatrix: (NSMutableArray*) matrixTwo;

-(NSMutableArray*) multiplyMatrix: (NSMutableArray*) matrix
                    toScalar: (NSNumber*) scalar;

-(NSNumber*) meanMatrix: (NSArray*) matrix axis: (enum Axis) coordinate;

@end

NS_ASSUME_NONNULL_END
