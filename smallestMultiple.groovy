def int gcd(int a, int b) {
  if (a < b) return gcd(b,a)
  else if (a % b == 0) return b
  else return gcd (b, a % b)
}

def int scm(int a, int b) {a * b / gcd(a, b)}

int m = 1
for (int i = 2; i <= 20; i++) {
  m = scm(m,i)
  println m
}

println "scm(1..20) == $m" 
