//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Natasha Machado on 2023-09-17.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
  NSLog(@"Processing payment of $%ld using Paypal.", (long)amount);
}

- (BOOL)canProcessPayment {
  return arc4random_uniform(2) == 1;
}

@end
