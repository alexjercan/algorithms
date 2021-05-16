class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def mergeTwoLists(self, l1: ListNode, l2: ListNode) -> ListNode:
        result = None
        list_iter = result
        while l1 and l2:
            if not result:
                if  l1.val < l2.val:
                    result = l1
                    l1 = l1.next
                else:
                    result = l2
                    l2 = l2.next

                list_iter = result
            else:
                if  l1.val < l2.val:
                    list_iter.next = l1
                    l1 = l1.next
                else:
                    list_iter.next = l2
                    l2 = l2.next
                list_iter = list_iter.next

        if l1:
            if not result:
                result = l1
            else:
                list_iter.next = l1
        elif l2:
            if not result:
                result = l2
            else:
                list_iter.next = l2

        return result

Solution().mergeTwoLists(None, ListNode(0, None))