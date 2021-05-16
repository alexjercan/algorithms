# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution(object):
    def maxDepth(self, root):
        """
        :type root: TreeNode
        :rtype: int
        """
        def dfs(tree):
            if tree is None:
                return 0
            left = dfs(tree.left) + 1
            right = dfs(tree.right) + 1
            return max([left, right]) 
        return dfs(root)