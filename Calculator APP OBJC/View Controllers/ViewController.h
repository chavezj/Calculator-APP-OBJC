//
//  ViewController.h
//  Calculator APP OBJC
//
//  Created by Chavez, Joe on 3/18/22.
//

#import <UIKit/UIKit.h>

//CONSTANTS
#define PLUS 0
#define MINUS 1
#define MULTIPLY 2
#define DIVIDE 3

@interface ViewController : UIViewController
{
    //variables
    NSInteger num1;
    NSInteger num2;
    double answer;
    
    //operand
    NSInteger operand;
    
    //WHAT WAS PRESSED
    NSString *theNumber;
    
    //define label
    IBOutlet UILabel *lblText;
    //make it visible with IBOutlet to the gui
}

//DEFINE GETTERS AND SETTERS
@property NSInteger num1;
@property NSInteger num2;
@property double answer;

//operand
@property NSInteger operand;

//WHAT WAS PRESSED
//nonatomic is exclusive to mulithread, strong keep it 
@property (nonatomic, strong) NSString *theNumber;

//define label
@property (nonatomic, strong) IBOutlet UILabel *lblText;

-(IBAction)press9:(id)sender;

@end

