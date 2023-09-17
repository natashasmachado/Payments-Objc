//
//  main.m
//  Payments
//
//  Created by Natasha Machado on 2023-09-14.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger randomAmount = arc4random_uniform(901) + 100;
    NSLog(@"Thank you for shopping at Acme.com. Your total today is $%ld.", (long)randomAmount);
    NSLog(@"Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple");
    
    NSLog(@"> ");
    char str[100];
    fgets(str, 100, stdin);
    
    NSInteger paymentMethod = atoi(str);
    
    PaymentGateway *paymentGateway = [PaymentGateway new];
    id<PaymentDelegate> paymentService = nil;
    
    switch (paymentMethod) {
      case 1:
        paymentService = [PaypalPaymentService new];
        break;
      case 2:
        paymentService = [StripePaymentService new];
        break;
      case 3:
        paymentService = [AmazonPaymentService new];
        break;
      case 4:
        paymentService = [ApplePaymentService new];
        break;
      default:
        NSLog(@"Invalid payment method.");
        break;
    }
    
    paymentGateway.paymentDelegate = paymentService;
    
    if ([paymentService canProcessPayment]) {
      [paymentGateway processPaymentAmount:randomAmount];
    } else {
      NSLog(@"Your payment cannot be processed.");
    }
  }
  return 0;
}
