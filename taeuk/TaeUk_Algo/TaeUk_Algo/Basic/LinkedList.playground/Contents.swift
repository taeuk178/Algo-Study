import Foundation

class Node {
    
    var value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedListCLA {
    var head: Node?
    
    func insert(value: Int) {
        if head == nil {
            head = Node(value: value, next: nil)
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        
        current?.next = Node(value: value, next: nil)
    }
    
    func displayListItems() {
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
}

let LinkedList = LinkedListCLA()
LinkedList.insert(value: 1)
LinkedList.insert(value: 2)
LinkedList.insert(value: 3)

LinkedList.displayListItems()

