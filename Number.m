#import "Number.h"

@implementation Number

-(void) print
{
NSLog(@"The number is %f.", number);
}

-(void) setNumber: (double) n
{
  number=n;
}

-(int) isEven
{
  if(number != (int) number){ //check if it isn't whole number.
    return 1;
  }else{
    if((int) number % 2 == 0){
      return 2;
    }else{
      return 3;
    }
  }
}


-(bool) isPrime
{
  if(number != (int) number){
    return false;
  }else{
    bool ver = true;
    if(number <= 0){
      ver = false;
    }else{
      int factor = 2;
      while(factor != number)
      {
        if((int)number % factor == 0){
          ver=false;
        }
        ++factor;
      }
    }
  return ver;
  }
}

-(int) removeDecimals: (double) n
{
  int temp = (int) n;

  while (temp!=n){
    n *= 10;
    temp *= 10;
    temp = (int) n;
  }

  return temp;
}

-(int) countDigits
{
  int n = [self removeDecimals: [self absValue]];
  int digitCount = 0;

  while (n != 0 ){
    n /= 10;
    ++digitCount;
  }

  return digitCount ;
}

- (double) absValue
{
  if(number < 0){
    return -number;
  }
  return number;
}

- (void) largestD
{
  int n = [self removeDecimals: [self absValue]];
  int largest;

  while(n > 10){
    if (largest < n % 10){
      largest = n % 10;
    }
    n /= 10;
  }

  if(n < 10  &&  n > largest){ //for single digits and the leading digit.
    largest = n;
  }

NSLog(@"The largest digit is %i.", largest);
}


-(bool) isPerfectSquare{
  if(number != (int) number){
    return false;
  }

  int possFactor; //include 0 as perfect square.

  while((possFactor*possFactor) <= number){
    if(possFactor*possFactor == number){
      return true;
    }
    ++possFactor;
  }
  return false;
}

-(int) convertToBinary{ //only for positive integers.
  int digPosition = 1; int binary; int temp = (int) [self absValue];

  while(temp>0){
    binary += (temp % 2) * digPosition;
    //NSLog(@"%i,%i,%i", binary, temp, a);
    temp /= 2;
    digPosition *= 10; //limited range, can only go to 10^9.
    if(digPosition > pow(10,9)){
      return -1;
    }
  }

  return binary;
}

-(void) expressAsFraction{
  int dp = 0; int temp = (int) number; double n = number;

  while (temp != n){ //count decimal places
    n *= 10;
    temp *= 10;
    temp = (int) n;
    ++dp;
  }
  NSLog(@"The number has %i decimal places.", dp);

  int numerator = (int) n; int denominator = pow(10,dp);
  int factor = 2; bool isPositive = true;

  if(numerator < 0){
    numerator = -numerator;
    isPositive = false;
  }

  while(factor <= numerator)
  {
    if(numerator % factor == 0 && denominator % factor == 0 ){
      numerator /= factor;
      denominator /= factor;
      factor = 1; //recheck previous possible factors.
    }
    ++factor;
  }

  if(isPositive != true){
    numerator=-numerator;
  }

  NSLog(@"The simplified fraction of the number is: %i over %i", numerator, denominator);
}

-(int) nearestPowerOfTwo{ // power values >=0.
  if(number <= 1){
    return 0;
  }

  int powTwo = 2; int power = 1;

  while (powTwo < number){
    powTwo *= 2;
    ++power;
  }

  if(number - pow(2,power) < pow(2,power + 1)- number){
    return power;
  }else{
    return power + 1;
  }
}

-(int) nearestPerfectSquare{
  int factor = 1;

  while(factor * factor < number)
  {
    ++factor;
  }

  if (number - ((factor - 1) * (factor - 1)) < (factor * factor) - number)
  {
    return (factor - 1) * (factor - 1);
  }else{
    return factor * factor;
  }
}

-(bool) isPalindrome {
  int x = [self removeDecimals: number];
  int n = x; int reverse;
  int count = pow(10,[self countDigits] -  1);

  while(n > 0){
    reverse += (n % 10) * count;
    //NSLog(@"%i", reverse);
    count /= 10;
    n /= 10;
  }

  return(reverse == x);
}

-(bool) isFibonacci {
  int fibnum1 = 0;
  int fibnum2 = 1;
  while (fibnum1 < number){
    if(fibnum2 == number){
      return true;
    }
    int temp = fibnum2;
    fibnum2 = fibnum1 + fibnum2;
    fibnum1 = temp;
    //NSLog(@"%i, %i", fibnum1, fibnum2);
  }
  return false;
}




@end
