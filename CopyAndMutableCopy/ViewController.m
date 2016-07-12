//
//  ViewController.m
//  CopyAndMutableCopy
//
//  Created by Cantoraz Chou on 7/12/16.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Immutable literal string
    [self __caz__testImmutableLiteralString];
    
    // Immutable non-literal string
    [self __caz__testImmutableNonLiteralString];
    
    // Mutable non-literal string
    [self __caz__testMutableNonLiteralString];

    // Immutable array
    [self __caz__testImmutableArray];
    
    // Mutable array
    [self __caz__testMutableArray];
}

- (void)__caz__testImmutableLiteralString
{
    NSString* str = @"This is a string";
    NSString* strCopy = [str copy];
    NSMutableString* strMutableCopy = [str mutableCopy];
    
    NSLog(@"-----Immutable-Literal-String-----");
    NSLog(@"%-20s : %p", [@"str" UTF8String],            str);
    NSLog(@"%-20s : %p", [@"strCopy" UTF8String],        strCopy);
    NSLog(@"%-20s : %p", [@"strMutableCopy" UTF8String], strMutableCopy);
}

- (void)__caz__testImmutableNonLiteralString
{
    NSString* str = [NSString stringWithFormat:@"This is a string"];
    NSString* strCopy = [str copy];
    NSMutableString* strMutableCopy = [str mutableCopy];
    
    NSLog(@"-----Immutable-Non-Literal-String-----");
    NSLog(@"%-20s : %p", [@"str" UTF8String],            str);
    NSLog(@"%-20s : %p", [@"strCopy" UTF8String],        strCopy);
    NSLog(@"%-20s : %p", [@"strMutableCopy" UTF8String], strMutableCopy);
}

- (void)__caz__testMutableNonLiteralString
{
    NSMutableString* str = [NSMutableString stringWithString:@"This is a string"];
    NSString* strCopy = [str copy];
    NSMutableString* strMutableCopy = [str mutableCopy];
    
    NSLog(@"-----Mutable-Non-Literal-String-----");
    NSLog(@"%-20s : %p", [@"str" UTF8String],            str);
    NSLog(@"%-20s : %p", [@"strCopy" UTF8String],        strCopy);
    NSLog(@"%-20s : %p", [@"strMutableCopy" UTF8String], strMutableCopy);
}

- (void)__caz__testImmutableArray
{
    NSArray* arr = @[@"a", @"b", @"c"];
    NSArray* arrCopy = [arr copy];
    NSMutableArray* arrMutableCopy = [arr mutableCopy];
    
    NSLog(@"-----Immutable-Array-----");
    NSLog(@"%-20s : %p", [@"arr" UTF8String],            arr);
    NSLog(@"%-20s : %p", [@"arrCopy" UTF8String],        arrCopy);
    NSLog(@"%-20s : %p", [@"arrMutableCopy" UTF8String], arrMutableCopy);
    
    NSLog(@"%-14s : [%p, %p, %p]", [@"arr" UTF8String],            arr[0], arr[1], arr[2]);
    NSLog(@"%-14s : [%p, %p, %p]", [@"arrCopy" UTF8String],        arrCopy[0], arrCopy[1], arrCopy[2]);
    NSLog(@"%-14s : [%p, %p, %p]", [@"arrMutableCopy" UTF8String], arrMutableCopy[0], arrMutableCopy[1], arrMutableCopy[2]);
}

- (void)__caz__testMutableArray
{
    NSMutableArray* arr = [[NSMutableArray alloc] initWithObjects:@"a", @"b", @"c", nil];
    NSArray* arrCopy = [arr copy];
    NSMutableArray* arrMutableCopy = [arr mutableCopy];
    
    NSLog(@"-----Mutable-Array-----");
    NSLog(@"%-20s : %p", [@"arr" UTF8String],            arr);
    NSLog(@"%-20s : %p", [@"arrCopy" UTF8String],        arrCopy);
    NSLog(@"%-20s : %p", [@"arrMutableCopy" UTF8String], arrMutableCopy);
    
    NSLog(@"%-14s : [%p, %p, %p]", [@"arr" UTF8String],            arr[0], arr[1], arr[2]);
    NSLog(@"%-14s : [%p, %p, %p]", [@"arrCopy" UTF8String],        arrCopy[0], arrCopy[1], arrCopy[2]);
    NSLog(@"%-14s : [%p, %p, %p]", [@"arrMutableCopy" UTF8String], arrMutableCopy[0], arrMutableCopy[1], arrMutableCopy[2]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
