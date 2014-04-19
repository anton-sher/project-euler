p = 0
for (a = 100; a <= 999; a++) {
  for (b = 100; b <= 999; b++) {
    m = a * b
    if (Integer.parseInt(Integer.toString(m).reverse()) == m && m > p) {
      p = m
    }
  }
}
println p

