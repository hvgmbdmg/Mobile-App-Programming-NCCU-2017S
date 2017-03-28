/*:

 # Your shopping cart

 Now, it's your turn to create your shopping list.
 
 Assume that you want to buy following books:

 * "Digital Fortress" by "Dan Brown", $9.99
 * "Angels & Demons" by "Dan Brown", $17.00
 * "The Da Vinci Code" by "Dan Brown", $9.99
 * "Deception Point" by "Dan Brown", $17.00
 * "Harry Potter and the Goblet of Fire" by "J.K. Rowling", $12.99
 * "Harry Potter and the Half-Blood Prince" by "J.K. Rowling", $12.99
 * "Harry Potter and the Deathly Hallows" by "J.K. Rowling", $14.99
 * "旅行與讀書" by "詹宏志", $12.00
 * "國宴與家宴" by "王宣一", $7.99

 Then, let's create a book store first:
 
 */

var bookStore = BookStore()

/*:
 
 Now start to feed data to the book store.
 
 You have to prepare following functions:
 1. A function which returns the name of authors in a set or a list. 
    _Note, you have to remove duplicated authors._
 2. A function which returns the totoal price of books to purchase
 3. A function which returns the number of books to buy
 4. A function which returns a book with its title, author, and price by a given index.
    If the index is out of bound, return `nil`.
 
 */

/*
same name will be ignore.
*/

let books: [[String: String]] = [
    ["author": "Dan Brown", "title": "Digital Fortress", "price": "9.99"],
    ["author": "Dan Brown", "title": "Angels & Demons", "price": "17.00"],
    ["author": "Dan Brown", "title": "The Da Vinci Code", "price": "9.99"],
    ["author": "Dan Brown", "title": "Deception Point", "price": "17.00"],
    ["author": "J.K. Rowling", "title": "Harry Potter and the Goblet of Fire", "price": "12.99"],
    ["author": "J.K. Rowling", "title": "Harry Potter and the Half-Blood Prince", "price": "12.99"],
    ["author": "J.K. Rowling", "title": "Harry Potter and the Deathly Hallows", "price": "14.99"],
    ["author": "詹宏志", "title": "旅行與讀書", "price": "12.00"],
    ["author": "王宣一", "title": "國宴與家宴", "price": "7.99"],
]

/*
books.count
books.description
books.capacity
books.customMirror
books.endIndex
books.first
books.endIndex

Double(books[1]["price"]!)
 */


//.author
//books[1].index()
//books[2].

//books[1].values("price");

//let booktest = Set(books[1..5].value);


//var authorName = [String]();
//var smallEvenNumbers: Set<String>;

/*for bookItem in 0 ..< books.count {
    authorName.append((books[bookItem].first?.value)!)
    
}

var set3 = Set(authorName)

*/

//books[1].first?.value

//Test
//bookStore = BookStore.from(books)



// Use this
func distinctAuthors() -> Set<String> {
    var authorsList = [String]();
    
    for bookItem in 0 ..< books.count {
        authorsList.append((books[bookItem].first?.value)!)
    }
    return Set(authorsList);
}
// or this

distinctAuthors().sorted();

/*
func distinctAuthors() -> [String] {
    var authorsList = [String]();
    
    
    for bookItem in 0 ..< books.count {
        authorsList.append((books[bookItem].first?.value)!)
        
    }
    
    let distinctAuthorsList = Set(authorsList);
    
    return [String](distinctAuthorsList);
    //return authorsList;
}*/


//distinctAuthors();
// then

bookStore.setDataSource(authorsGetter: distinctAuthors);

func totalBookPrice() -> Double {
    var allPrice: Double = 0.0;
    for bookItem in 0 ..< books.count {
        allPrice += Double(books[bookItem]["price"]!)!;
        
    }
    return allPrice;

}

totalBookPrice();

bookStore.setDataSource(priceCalculator: totalBookPrice);

func getBook(at index: Int) -> (title: String, author: String, price: Double)? {
    if index > books.count-1 || index < 0 {
        return nil;
    }
    
    let title: String = books[index]["title"]!;
    let author: String = books[index]["author"]!;
    let price: Double = Double(books[index]["price"]!)!;
    
    //return (title: books[index]["title"]!, author: books[index]["author"]!, price: Double(books[index]["price"]!)!);
    return (title, author, price);
}

//getBook(at: 1)

//getBook(at: 0)

bookStore.setDataSource(bookGetter: getBook(at:))

//Double(books[1]["price"]!);
//books[1]["author"];
//books[1]["title"];
/*:

 Finally, let's show the book store shopping cart:

 */

bookStore.showInPlayground()

//: ---
//: [<- Previous](@previous) | [Next ->](@next)
