//
//  MatrixMeanTests.m
//  MatrixTests
//
//  Created by Jéssica Araujo on 26/07/21.
//

#import <XCTest/XCTest.h>
#import "MatrixCalculator.h"

@interface MatrixMeanTests : XCTestCase

@property MatrixCalculator *matrixCalculator;
@property NSMutableArray *matrix;

@property NSMutableArray *rowsOne;
@property NSMutableArray *rowsTwo;

@end

@implementation MatrixMeanTests

- (void)setUp {
    
    self.matrixCalculator = [MatrixCalculator alloc];
    self.matrix = [[NSMutableArray alloc] init];
    
    self.rowsOne = [[NSMutableArray alloc] init];
    self.rowsTwo = [[NSMutableArray alloc] init];
    
    [self.rowsOne addObject:[NSNumber numberWithDouble:0.0]];
    [self.rowsOne addObject:[NSNumber numberWithDouble:1.0]];
    [self.rowsOne addObject:[NSNumber numberWithDouble:2.0]];
    
    [self.rowsTwo addObject:[NSNumber numberWithDouble:1.0]];
    [self.rowsTwo addObject:[NSNumber numberWithDouble:2.0]];
    [self.rowsTwo addObject:[NSNumber numberWithDouble:3.0]];
    
    [self.matrix insertObject:self.rowsOne atIndex:0];
    [self.matrix insertObject:self.rowsTwo atIndex:1];
}

- (void)testMeanCalculation {
    
    //given
    NSNumber *expectedMean = [NSNumber numberWithDouble:1.5];
    
    //when
    NSNumber *resultMean = [self.matrixCalculator meanMatrix:self.matrix];
    
    //then
    XCTAssertEqualObjects(expectedMean, resultMean);
}

@end
