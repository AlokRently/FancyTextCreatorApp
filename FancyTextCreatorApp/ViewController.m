//
//  ViewController.m
//  FancyTextCreatorApp
//
//  Created by Rently Coimbatore on 15/08/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    state = false;
}


- (IBAction)large:(id)sender {
    fontSize = 100;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)medium:(id)sender {
    fontSize = 50;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)small:(id)sender {
    fontSize = 33;
    self.label.font = [self.label.font fontWithSize:fontSize];
}

- (IBAction)shadow:(id)sender {
    if (state == true){
        self.label.layer.shadowOpacity = 0.0;
    }
    else {
        self.label.layer.shadowColor = [[UIColor grayColor] CGColor];
        self.label.layer.shadowOpacity = 0.25;
        self.label.layer.shadowRadius = 2.0f;
        self.label.layer.shadowOffset = CGSizeMake(2, 2);
        
        state = true;
    }
    
}

- (IBAction)font4:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"SugarstyleMillenial-Regular" size:fontSize]];

}

- (IBAction)font3:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"Moon Flower" size:fontSize]];

}

- (IBAction)font2:(id)sender {
    [self.label setFont:[UIFont fontWithName:@"LemonMilk" size:fontSize]];

}

- (IBAction)font1:(id)sender {

    [self.label setFont:[UIFont fontWithName:@"Blacksword" size:fontSize]];
}

- (IBAction)green:(id)sender {
    self.label.textColor = [UIColor greenColor];

}

- (IBAction)blue:(id)sender {
    self.label.textColor = [UIColor blueColor];

}

- (IBAction)red:(id)sender {
    self.label.textColor = [UIColor redColor];
}

- (IBAction)dismissKeyboard:(id)sender {
    
    self.label.text = self.textField.text;
    [self resignFirstResponder];
}

@end
