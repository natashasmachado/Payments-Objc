//
//  ApplePaymentService.m
//  Payments
//
//  Created by Natasha Machado on 2023-09-17.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)amount {
  NSLog(@"Processing payment of $%ld thru ApplePay.", (long)amount);
}

- (BOOL)canProcessPayment {
  return arc4random_uniform(2) == 1;
}

@end
