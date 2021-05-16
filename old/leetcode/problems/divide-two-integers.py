class Solution:
	def divide(self, x: int, y: int) -> int:
		sign = True

		if x < 0 and y > 0:
			x = -x
			sign = False

		elif x > 0 and y < 0:
			y = -y
			sign = False

		elif x < 0 and y < 0:
			x = -x
			y = -y

		v = y

		if x > v:
			 quotient = 1
		elif x == v and sign:
			return 1
		elif x == v and not sign:
			return -1
		else:
			return 0


		moves = []
		quotients = []

		while v <= x:
			 moves.append(v)
			 quotients.append(quotient)
			 v+=v
			 quotient+=quotient

		left = moves[-1]
		right = v
		r_q = quotient
		l_q = quotients[-1]

		i = 2

		while right - left > y:

			 mid = right - moves[-i]
			 m_q = r_q - quotients[-i]

			 if x < mid:
				 right = mid
				 r_q = m_q
			 elif x > mid:
				 left = mid
				 l_q = m_q

			 elif x == mid:
				 l_q = m_q
				 break
			 i+=1
		if sign:
			if l_q > 2147483647:
				return 2147483647
			else:
				return l_q
		else:
			if l_q > 2147483648:
				return -2147483648
			else:
				return -l_q

print(Solution().divide(-2147483648, -1))