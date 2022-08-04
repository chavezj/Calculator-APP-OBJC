//
//  ViewController.m
//  Calculator APP OBJC
//
//  Created by Chavez, Joe on 3/18/22.
//

#import "ViewController.h"

//this is private
@interface ViewController ()

@end



@implementation ViewController

//synthesize those variables, get and sets
@synthesize num1, num2, answer, operand, theNumber, lblText;

//CONSTUCTOR
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //INITIALIZE
    [self setNum1:0];
    [self setNum2: 0];
    [self setOperand: PLUS];
    [self setAnswer:0.0];
    [self setTheNumber:@"0"];
    [self printNumber];
   
}
-(void)printNumber {
    [lblText setText:theNumber];
}

-(IBAction)press8:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"8"];
    [self printNumber];
}
-(IBAction)press9:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"9"];
    [self printNumber];
}
-(IBAction)press7:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"7"];
    [self printNumber];
}
-(IBAction)press6:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"6"];
    [self printNumber];
}
-(IBAction)press5:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"5"];
    [self printNumber];
}
-(IBAction)press4:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"4"];
    [self printNumber];
}
-(IBAction)press3:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"3"];
    [self printNumber];
}
-(IBAction)press2:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"2"];
    [self printNumber];
}
-(IBAction)press1:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"1"];
    [self printNumber];
}
-(IBAction)press0:(id)sender {
    theNumber = [theNumber stringByAppendingString:@"0"];
    [self printNumber];
}

-(void)saveNum1
{
    num1 = [theNumber integerValue];
    theNumber =@"0"; //clears
    [self printNumber]; //print label
}
//create event handler for arithmetic
-(IBAction)setPlus:(id)sender {
    [self saveNum1]; //they pressed a number
    //set operand to plus
    operand = PLUS;
}
-(IBAction)setMinus:(id)sender {
    [self saveNum1]; //they pressed a number
    //set operand to plus
    operand = MINUS;
}
-(IBAction)setMultiply:(id)sender {
    [self saveNum1]; //they pressed a number
    //set operand to plus
    operand = MULTIPLY;
}
-(IBAction)setDivide:(id)sender {
    [self saveNum1]; //they pressed a number
    //set operand to plus
    operand = DIVIDE;
}

-(IBAction)calculate:(id)sender {
    num2 = [theNumber integerValue];
    if (operand == PLUS)
        answer = num1 + num2;
    else if (operand == MINUS)
        answer = num1 - num2;
    else if (operand == MULTIPLY)
        answer  = num1 * num2;
    else {
        if (num2 == 0)
        {
            //pop alert
//            UIAlertView *alert
//            = [[UIAlertView alloc]
//                                  initWithTitle:@"Error" message:@"Cannot divide by zero." delegate:self
//
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Cannot divide by zero." preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
                // Ok action exampleOBJE
            }];
//            UIAlertAction *otherAction = [UIAlertAction actionWithTitle:@"Other" style:UIAlertActionStyleDefault //handler:^(UIAlertAction * action){
                // Other action
          //  }];
            [alert addAction:okAction];
            //[alert addAction:otherAction];
            [self presentViewController:alert animated:YES completion:nil];
            
        
            //label
            
            
        } else
        {
            answer = (double)num1 / (double)num2;//requires casting
        }
    }
        
    
    theNumber = [NSString stringWithFormat:@"%f",answer]; //string to a float
    [self printNumber];
    num1 = 0;
    num2 = 0;
    answer = 0.0;
}
-(IBAction)clearNum:(id)sender {
    theNumber = @"0";
    [self printNumber];
}

@end
