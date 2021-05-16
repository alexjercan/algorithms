from typing import List

class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def levelOrder(self, root: TreeNode) -> List[List[int]]:
        if not root:
            return []

        queue = []
        res = []
        queue.append([root])

        while True:
            nodes = queue.pop(0)
            if not nodes:
                break
            new_nodes = []
            values = []
            for node in nodes:
                values.append(node.val)
                if node.left:
                    new_nodes.append(node.left)
                if node.right:
                    new_nodes.append(node.right)
            res.append(values)
            queue.append(new_nodes)
        
        return res