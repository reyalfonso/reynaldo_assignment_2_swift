
let store1Location = (3, 3)
let store1Range = 2.5
let store2Location = (8, 8)
let store2Range = 2.5

// Location struct
struct Location {
    let x: Double
    let y: Double
}
// Customer struct
struct customer {
    let name: String
    let email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let location: Location
}

// Array of customers
var customers = [customer]()
    customers.append(customer(name: "Alice Smith", email: "alice@example.com", phoneNumber: "1234567890", acceptedNewsletter: true, location: Location(x: 2, y: 2)))
    customers.append(customer(name: "Bob Johnson", email: "bob@example.com", phoneNumber: "9876543210", acceptedNewsletter: false, location: Location(x: 4, y: 4)))
    customers.append(customer(name: "Charlie Brown", email: "charlie@example.com", phoneNumber: "5555555555", acceptedNewsletter: true, location: Location(x: 8, y: 8)))
    customers.append(customer(name: "David Lee", email: "david@example.com", phoneNumber: "1111111111", acceptedNewsletter: false, location: Location(x: 12, y: 12)))
    customers.append(customer(name: "Emma Davis", email: "emma@example.com", phoneNumber: "9999999999", acceptedNewsletter: true, location: Location(x: 16, y: 16)))
    customers.append(customer(name: "Frank Johnson", email: "frank@example.com", phoneNumber: "2222222222", acceptedNewsletter: false, location: Location(x: 20, y: 20)))
customers.append(customer(name: "Grace Miller", email: "grace@example.com", phoneNumber: "8888888888", acceptedNewsletter: true, location: Location(x: 1.5, y: 2.4)))
customers.append(customer(name: "Henry Wilson", email: "henry@example.com", phoneNumber: "3333333333", acceptedNewsletter: false, location: Location(x: 2, y: 1.8)))
    customers.append(customer(name: "Ivy Brown", email: "ivy@example.com", phoneNumber: "7777777777", acceptedNewsletter: true, location: Location(x: 32, y: 32)))
    customers.append(customer(name: "John Doe", email: "john@example.com", phoneNumber: "4444444444", acceptedNewsletter: false, location: Location(x: 36, y: 36)))
print (customers)

func printEmailsInStoreRange (storeLocation: Location, customers: [customer]) {
    let storeRange = store1Range
    print("Customers within store range at \(storeLocation.x), \(storeLocation.y):")
    
    for customer in customers {
        let distance = ((customer.location.x - storeLocation.x) + (customer.location.y - storeLocation.y))
        if distance <= storeRange {
            print("Name: \(customer.name) Email: \(customer.email)")
        }
    }
}

let restaurantLocation = Location(x: 5, y: 5)
printEmailsInStoreRange(storeLocation: restaurantLocation, customers: customers)

