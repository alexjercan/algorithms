class MinStack(object):

    def __init__(self):
        """
        initialize your data structure here.
        """
        self.minStack=[]
        

    def push(self, x):
        """
        :type x: int
        :rtype: None
        """
        self.minStack.append(x) 
        

    def pop(self):
        """
        :rtype: None
        """
        return self.minStack.pop()
        

    def top(self):
        """
        :rtype: int
        """
        return self.minStack[-1]
        

    def getMin(self):
        """
        :rtype: int
        """
        return min(self.minStack)
        


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()