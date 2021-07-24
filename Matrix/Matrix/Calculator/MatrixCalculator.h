//
//  MatrixCalculator.h
//  Matrix
//
//  Created by Ronaldo Gomes on 22/07/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MatrixCalculator : NSObject

-(NSMutableArray*) sumMatrix: (NSMutableArray*) matrixOne
                    toMatrix: (NSMutableArray*) matrixTwo;

-(NSMutableArray*) multiplyMatrix: (NSMutableArray*) matrix
                    toScalar: (NSNumber*) scalar;


@end

NS_ASSUME_NONNULL_END
