import heapq

[n, k] = list(map(int, input().split(" ")))
xs = list(map(int, input().split(" ")))
heapq.heapify(xs)

def sweeten(xs):
    if len(xs) < 2:
        return [-1]

    a = heapq.heappop(xs)
    b = heapq.heappop(xs)

    c = a + 2 * b

    heapq.heappush(xs, c)

    return xs


def should_run(xs):
    if xs == [-1]:
        return False

    for x in xs:
        if x < k:
            return True

    return False


count = 0
while should_run(xs):
    count += 1
    xs = sweeten(xs)

if xs == [-1]:
    print(-1)
else:
    print(count)
