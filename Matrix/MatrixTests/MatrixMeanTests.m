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
    
    [self.rowsOne addObject:[NSNumber numberWithDouble:3.0]];
    [self.rowsOne addObject:[NSNumber numberWithDouble:1.0]];
    [self.rowsOne addObject:[NSNumber numberWithDouble:2.0]];
    
    [self.rowsTwo addObject:[NSNumber numberWithDouble:1.0]];
    [self.rowsTwo addObject:[NSNumber numberWithDouble:2.0]];
    [self.rowsTwo addObject:[NSNumber numberWithDouble:3.0]];
    
    [self.matrix insertObject:self.rowsOne atIndex:0];
    [self.matrix insertObject:self.rowsTwo atIndex:1];
}

- (void)testMeanCalculationOfRowsWithMutableArray {
    
    //given
    NSNumber *expectedMean = [NSNumber numberWithDouble:2.0];
    
    //when
    NSNumber *resultMean = [self.matrixCalculator meanMatrix:self.matrix axis:x];
    
    //then
    XCTAssertEqualObjects(expectedMean, resultMean);
}

- (void)testNoMatrixException {
    
    NSArray *array = @[@1, @2, @3];
    NSLog(@"%@", array);
    XCTAssertThrows([self.matrixCalculator meanMatrix:array axis:y]);
}


- (void)testNullException {
    
    NSMutableArray *array = NULL;
    XCTAssertThrows([self.matrixCalculator meanMatrix:array axis:y]);
}


- (void)testMeanCalculationWith2dNSArray {
    
    //given
    NSArray *array = @[@[@3.0, @1.0, @2.0], @[@1.0, @2.0, @3.0]];
    
    
    //when
    NSNumber *resultMeanNSArray = [self.matrixCalculator meanMatrix:array axis:x];
    NSNumber *resultMeanMultableMatrix = [self.matrixCalculator meanMatrix:self.matrix axis:x];
    
    XCTAssertEqualObjects(resultMeanNSArray, resultMeanMultableMatrix);
   
}

- (void)testMeanCalculationOfColumnsWithMutableArray {
    
    //given
    NSNumber *expectedMean = [NSNumber numberWithDouble:2.0];
    
    //when
    NSNumber *resultMean = [self.matrixCalculator meanMatrix:self.matrix axis:y];
    
    //then
    XCTAssertEqualObjects(expectedMean, resultMean);
}
@end
