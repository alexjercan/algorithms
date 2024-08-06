from typing import Optional

class Node:
    data: str
    next: Optional['Node']

    def __init__(self, data: str):
        self.data = data
        self.next = None


class LinkedList:
    head: Optional[Node]

    def __init__(self):
        self.head = None

    def append(self, data: str) -> None:
        if self.head is None:
            self.head = Node(data)
        else:
            node = self.head
            while node.next is not None:
                node = node.next

            node.next = Node(data)

    def __str__(self) -> str:
        node = self.head
        result = "["
        while node is not None:
            result += str(node.data)
            if node.next is not None:
                result += ", "

            node = node.next

        result += "]"
        return result


if __name__ == "__main__":
    my_list = LinkedList()

    print("Should be empty: ", end="")
    print(my_list)

    my_list.append("hello")

    print("Should be [hello]: ", end="")
    print(my_list)

    my_list.append("world")

    print("Should be [hello, world]: ", end="")
    print(my_list)
