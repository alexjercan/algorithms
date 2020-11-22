class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def removeNthFromEnd(self, head: ListNode, n: int) -> ListNode:
        prev = None
        curr = head

        while True:
            counter = curr
            k = n
            while counter and k > 0:
                counter = counter.next
                k = k - 1

            if counter == None and k == 0:
                if not prev:
                    return head.next
                prev.next = curr.next
                break

            prev = curr
            curr = curr.next

        return head

    def onePass(self, head: ListNode, n: int) -> ListNode:
        dummy = ListNode(0)
        dummy.next = head
        first = dummy
        second = dummy
        for _ in range(n + 2):
            first = first.next
        while first:
            first = first.next
            second = second.next
        second.next = second.next.next;
        return dummy.next;