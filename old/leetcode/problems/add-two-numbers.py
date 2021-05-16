class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def addTwoNumbers(self, l1: ListNode, l2: ListNode) -> ListNode:
        carry = 0
        linked_list: ListNode = None
        list_iter: ListNode = None

        while l1 and l2:
            node_value = l1.val + l2.val + carry
            carry = int(node_value / 10)
            node_value = node_value % 10
            if not linked_list:
                linked_list = ListNode(node_value, None)
                list_iter = linked_list
            else:
                list_iter.next = ListNode(node_value, None)
                list_iter = list_iter.next

            l1 = l1.next
            l2 = l2.next

        while l1:
            node_value = l1.val + carry
            carry = int(node_value / 10)
            node_value = node_value % 10
            if not linked_list:
                linked_list = ListNode(node_value, None)
                list_iter = linked_list
            else:
                list_iter.next = ListNode(node_value, None)
                list_iter = list_iter.next
            l1 = l1.next

        while l2:
            node_value = l2.val + carry
            carry = int(node_value / 10)
            node_value = node_value % 10
            if not linked_list:
                linked_list = ListNode(node_value, None)
                list_iter = linked_list
            else:
                list_iter.next = ListNode(node_value, None)
                list_iter = list_iter.next
            l2 = l2.next

        if carry != 0:
            if not linked_list:
                linked_list = ListNode(carry, None)
                list_iter = linked_list
            else:
                list_iter.next = ListNode(carry, None)
                list_iter = list_iter.next

        return linked_list

ll = Solution().addTwoNumbers(ListNode(9, ListNode(9, None)), ListNode(9, None))
while ll:
    print(ll.val)
    ll = ll.next
