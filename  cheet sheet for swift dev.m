//
//  cheat sheet.m
//  
//
//  Created by Seyit Kaya on 17.08.2018.

#import <Foundation/Foundation.h>

//Variables and constants
//---------------------

//Create a variable

NSInteger score = 556;
NSString *name = @"Taylor";
BOOL loggedIn = NO;

var score = 556
var name = "Taylor"
var loggedIn = false

//Create a constant

const NSInteger score = 556;
NSString * const name = @"Taylor";
const BOOL firstRun = YES;

let score = 556
let name = "Taylor"
let firstRun = true

//Create a variable array
NSMutableArray *items = [NSMutableArray new];
NSMutableArray<NSString *> *results = [NSMutableArray new];

var items = [String]()
var results = Array<String>()
The first style is strongly preferred.

//Create a constant array

NSArray *grades = @[@90, @85, @97];
NSArray *names = @[@"Taylor", @"Adele", @"Justin"];
let grades = [90, 85, 97]
let names = ["Taylor", "Adele", "Justin"]

//Adding a value type to an array

NSMutableArray *array = [NSMutableArray new];
[array addObject:[NSValue valueWithRect:CGRectMake(0, 0, 32, 64)]];


var array = [CGRect]()
array.append(CGRect(x: 0, y: 0, width: 32, height: 64))

//Create a dictionary
NSDictionary *houseNumbers = @{ @"Paul": @7, @"Jess": @56, @"Peter": @332 };

let houseNumbers = ["Paul": 7, "Jess": 56, "Peter": 332]
//Define an enum
typedef NS_ENUM(NSInteger, ShapeType) {
    kCircle,
    kRectangle,
    kHexagon
};

enum ShapeType: Int {
    case circle
    case rectangle
    case hexagon
}
//Appending a string

NSString *first = @"Hello, ";
NSString *second = [first stringByAppendingString:@" world!"];
let first = "Hello, "
let second = first + "world!"

//Adding to a number
NSInteger rating = 4;
rating++;
rating += 3;
var rating = 4
rating += 1
rating += 3
String interpolation
NSString *account = @"twostraws";
NSString *str = [NSString stringWithFormat:@"Follow me on Twitter: %@", account];
let account = "twostraws"
let str = "Follow me on Twitter: \(account)"
Printing debug information
NSString *username = @"twostraws";
NSLog(@"Username is %@", username);
let username = "twostraws"
print("Username is \(username)")
Control flow
Checking a condition
NSInteger result = 86;

if (result >= 85) {
    NSLog(@"You passed the test!");
} else {
    NSLog(@"Please try again.");
}
let result = 86

if result >= 85 {
    print("You passed the test!")
} else {
    print("Please try again.")
}
Looping a set number of times
for (NSInteger i = 0; i < 100; ++i) {
    NSLog(@"This will be printed 100 times.");
}
for _ in 0 ..< 100 {
    print("This will be printed 100 times.")
}
Looping over an array
NSArray *companies = @[@"Apple", @"Facebook", @"Twitter"];

for (NSString *name in companies) {
    NSLog(@"%@ is a well-known tech company.", name);
}
let companies = ["Apple", "Facebook", "Twitter"]

for name in companies {
    print("\(name) is a well-known tech company.")
}
Switching over a value
NSInteger rating = 8;

switch (rating) {
    case 0 ... 3:
        NSLog(@"Awful");
        break;
    case 4 ... 7:
        NSLog(@"OK");
        break;
    case 8 ... 10:
        NSLog(@"Good");
        break;
    default:
        NSLog(@"Invalid rating.");
}

let rating = 8

switch rating {
case 0...3:
    print("Awful")
case 4...7:
    print("OK")
case 8...10:
    print("Good")
default:
    print("Invalid rating.")
}

//Functions
//A function that accepts no parameters and returns nothing
- (void)printGreeting {
    NSLog(@"Hello!");
}

[self printGreeting];
func printGreeting() {
    print("Hello!")
}

printGreeting()
//A function that accepts no parameters and returns a string
- (NSString*)printGreeting {
    return @"Hello!";
}

NSString *result = [self printGreeting];
func printGreeting() -> String {
    return "Hello!"
}

let result = printGreeting()
//A function that accepts a string and returns a string
- (NSString*)printGreetingFor:(NSString*)user {
    return [NSString stringWithFormat:@"Hello, %@!", user];
}

NSString *result = [self printGreetingFor:@"Paul"];
//The name for the first parameter should be part of the method name itself.

func printGreeting(for user: String) -> String {
    return "Hello, \(user)!"
}

let result = printGreeting(for: "Paul")
//A function that accepts a string and an integer, and returns a string
- (NSString*)printGreetingFor:(NSString*)user withAge:(NSInteger)age {
    if (age >= 18) {
        return [NSString stringWithFormat:@"Hello, %@! You're an adult.", user];
    } else {
        return [NSString stringWithFormat:@"Hello, %@! You're a child.", user];
    }
}

NSString *result = [self printGreetingFor:@"Paul" withAge:38];
func printGreeting(for user: String, age: Int) -> String {
    if age >= 18 {
        return "Hello, \(user) You're an adult."
    } else {
        return "Hello, \(user)! You're a child."
    }
}

let result = printGreeting(for: "Paul", age: 38)
//Returning multiple values from a function
- (NSDictionary<NSString*, NSString*>*)loadAddress {
    return @{
        @"house": @"65, Park Street",
        @"city": @"Bristol",
        @"country": @"UK"
    };
}

NSDictionary<NSString*, NSString*> *address = [self loadAddress];
NSString *house = address[@"house"];
NSString *city = address[@"city"];
NSString *country = address[@"country"];

func loadAddress() -> (house: String, city: String, country: String) {
    return ("65, Park Street", "Bristol", "UK")
}

let (city, street, country) = loadAddress()
A closure that accepts no parameters and returns nothing.
void (^printUniversalGreeting)(void) = ^{
    NSLog(@"Bah-weep-graaaaagnah wheep nini bong");
};

printUniversalGreeting();
let universalGreeting = {
    print("Bah-weep-graaaaagnah wheep nini bong")
}

universalGreeting()
//A closure that accepts no parameters and returns a string.
NSString* (^getUniversalGreeting)(void) = ^{
    return @"Bah-weep-graaaaagnah wheep nini bong";
};

NSString *greeting = getUniversalGreeting();
NSLog(@"%@", greeting);
let getUniversalGreeting = {
    return "Bah-weep-graaaaagnah wheep nini bong"
}

let greeting = getUniversalGreeting()
print(greeting)
//A closure that accepts a string parameter and returns a string.
NSString* (^getGreeting)(NSString *) = ^(NSString *name) {
    return [NSString stringWithFormat:@"Live long and prosper, %@.", name];
};

NSString *greeting = getGreeting(@"Paul");
NSLog(@"%@", greeting);
let getGreeting = { (name: String) in
    return "Live long and prosper, \(name)."
}

let greeting = getGreeting("Paul")
print(greeting)

//Classes
//---------------------
Creating an empty class
@interface MyClass : NSObject
@end

@implementation MyClass
@end
class MyClass: NSObject {
}


//Creating a class with two properties
@interface User : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSInteger age;
@end

@implementation User

@end
class User {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

//Swift requires you to create an initializer to give these properties default values.

//Creating a class with a private property
// in the header file
@interface User : NSObject
@property (nonatomic, copy) NSString *name;
@end

// in the implementation file
@interface User()
@property (nonatomic, assign) NSInteger age;
@end

@implementation User

@end


class User {
    var name: String
    private var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
//Creating a class with an instance method
@interface Civilization : NSObject
- (NSInteger)getMeaningOfLife;
@end

@implementation Civilization
- (NSInteger)getMeaningOfLife {
    return 42;
}
@end
class Civilization {
    func getMeaningOfLife() -> Int {
        return 42
    }
}
Creating a class with a static method
@interface Civilization : NSObject
+ (NSInteger)getMeaningOfLife;
@end

@implementation Civilization
+ (NSInteger)getMeaningOfLife {
    return 42;
}
@end
//The difference is small: + is used rather than -.

class Civilization {
    class func getMeaningOfLife() -> Int {
        return 42
    }
}
//Swift also supports static methods – methods that may not be overridden in a subclass.

Extending a type with a new method
@interface NSString (Trimming)
- (NSString*)trimmed;
@end

@implementation NSString (Trimming)

- (NSString*)trimmed {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

@end
extension String {
    func trimmed() -> String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
//Checking the class of an object
if ([object isKindOfClass:[YourClass class]]) {
    NSLog(@"This is a YourClass.");
}
if object is YourClass {
    print("This is a YourClass.")
}
//Typecasting
Dog *poodle = (Dog*)animalObject;
let poodle = animalObject as? Dog
let poodle = animalObject as! Dog
//The former will set poodle to nil if it is not a dog; the latter will crash your program if it is not a dog.

GCD
Running code on different threads
dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    NSLog(@"Running in the background...");
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"Running back on the main thread");
    });
});
DispatchQueue.global().async {
    print("Running in the background...")
    
    DispatchQueue.main.async {
        print("Running on the main thread")
    }
}

// reference Paul Hudson, hackingwithswift.com
