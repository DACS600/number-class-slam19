#import <Foundation/Foundation.h>

#import "Number.h"

int main(int argc, const char * argv[]) {
@autoreleasepool {

NSLog(@"Starting  ksjdflkfj the main method");

Number *myNumber = [[Number alloc] init];
[myNumber setNumber: 334];

[myNumber print];

NSLog(@"Its absolute value is %f.", [myNumber absValue]);

if([myNumber isEven]==1){
  NSLog(@"It is neither even nor odd.");
}
if([myNumber isEven]==2){
  NSLog(@"It is is even.");
}
if([myNumber isEven]==3){
  NSLog(@"It is odd.");
}

if([myNumber isPrime]){
  NSLog(@"It is prime.");
}else{
  NSLog(@"It is not prime.");
}

NSLog(@"It has %i digits.", [myNumber countDigits]);

[myNumber largestD];

[myNumber expressAsFraction];

if ([myNumber isPerfectSquare]){
NSLog(@"It is a perfect square.");
}else{
  NSLog(@"It is not a perfect square.");
}

NSLog(@"Its nearest perfect square is %i.", [myNumber nearestPerfectSquare]);

int power2=[myNumber nearestPowerOfTwo];
NSLog(@"It nearest power of 2 (>=0) is 2^%i = %f ", power2, pow(2,power2));

int i = [myNumber convertToBinary];
if(i == -1){
  NSLog(@"It is too large to caculate the binary form.");
}else{
NSLog(@"The binary form of its absolute value without decimals is %i",i );
}

if([myNumber isPalindrome]){
  NSLog(@"It is a palindrome.");
}else{
  NSLog(@"It is not a palindrome.");
}

if([myNumber isFibonacci]){
  NSLog(@"It is a fibonacci number.");
}else{
  NSLog(@"It is not a fibonacci number.");
}

}
return 0;
}
