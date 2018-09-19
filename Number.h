#import <Foundation/Foundation.h>
/*Number Project
by Simon Lam.
September 18, 2018.
Works for positive and negative integers, 0, and decimals.
*/
@interface Number: NSObject
{
double number;
}

-(void) print;
-(void) setNumber: (double) n;
-(double) absValue;
-(int) removeDecimals: (double) n;
-(int) isEven;
-(bool) isPrime;
-(int) countDigits;
-(void) largestD;
-(void) expressAsFraction;
-(bool) isPerfectSquare;
-(int) nearestPerfectSquare;
-(int) nearestPowerOfTwo;
-(int) convertToBinary;
-(bool) isPalindrome;
-(bool) isFibonacci;



@end
