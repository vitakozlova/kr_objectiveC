//
//  ViewController.m
//  Jokes
//
//  Created by Kozlova Vitaliya on 29.10.15.
//  Copyright (c) 2015 Kozlova Vitaliya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *joke;

@end

@implementation ViewController
{
    NSArray *jokes;
    int currentJoke;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    jokes =@[@"Joke1",@"Joke2",@"Joke3",@"Joke4",@"Joke5",@"Joke6"];
    currentJoke = 0;
    _joke.text = jokes[currentJoke];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)previous:(id)sender {
    if(currentJoke > 0) {
        currentJoke--;
        _joke.text=jokes[currentJoke];
    }
}
- (IBAction)next:(id)sender {
    if(currentJoke < [jokes count] - 1) {
        currentJoke++;
        _joke.text=jokes[currentJoke];
    }
}

@end
