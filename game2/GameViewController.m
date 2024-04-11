//
//  GameViewController.m
//  game2
//
//  Created by feng ting on 2024/4/14.
//

#import "GameViewController.h"

@interface GameViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *card1;
@property (weak, nonatomic) IBOutlet UIImageView *card2;
@property (weak, nonatomic) IBOutlet UIImageView *card3;
@property (weak, nonatomic) IBOutlet UIImageView *card4;
@property (weak, nonatomic) IBOutlet UIImageView *card5;
@property (weak, nonatomic) IBOutlet UIImageView *card6;


@end

@implementation GameViewController

NSArray *array = @[@"a1",@"a2",@"a3",@"a4",@"a5",@"a6",@"a7",@"a8",@"a9",@"a10",@"a11",@"a12",@"a13",
                   @"b1",@"b2",@"b3",@"b4",@"b5",@"b6",@"b7",@"b8",@"b9",@"b10",@"b11",@"b12",@"b13",
                   @"c1",@"c2",@"c3",@"c4",@"c5",@"c6",@"c7",@"c8",@"c9",@"c10",@"c11",@"c12",@"c13",
                   @"d1",@"d2",@"d3",@"d4",@"d5",@"d6",@"d7",@"d8",@"d9",@"d10",@"d11",@"d12",@"d13"];

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)start:(id)sender {
    NSUInteger randomIndex1 = arc4random_uniform((unsigned int)[array count]);
    _card1.image = [UIImage imageNamed:array[randomIndex1]];
    NSUInteger randomIndex2 = arc4random_uniform((unsigned int)[array count]);
    _card2.image = [UIImage imageNamed:array[randomIndex2]];
    NSUInteger randomIndex3 = arc4random_uniform((unsigned int)[array count]);
    _card3.image = [UIImage imageNamed:array[randomIndex3]];
    NSUInteger randomIndex4 = arc4random_uniform((unsigned int)[array count]);
    _card4.image = [UIImage imageNamed:array[randomIndex4]];
    NSUInteger randomIndex5 = arc4random_uniform((unsigned int)[array count]);
    _card5.image = [UIImage imageNamed:array[randomIndex5]];
    NSUInteger randomIndex6 = arc4random_uniform((unsigned int)[array count]);
    _card6.image = [UIImage imageNamed:array[randomIndex6]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
