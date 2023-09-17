//
//  PaymentGateway.m
//  Payments
//
//  Created by Natasha Machado on 2023-09-17.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)amount {
  if ([self.paymentDelegate canProcessPayment]) {
    [self.paymentDelegate processPaymentAmount:amount];
  } else {
    NSLog(@"Your payment can't be processed.");
  }
}

@end
