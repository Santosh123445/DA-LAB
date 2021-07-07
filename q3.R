is.palindrome <- function(x) 
{
  digits <- strsplit(as.character(x), "")[[1]]
  all(digits == rev(digits))
}
all_prods <- outer(1:999, 1:999)
p <- all_prods
p[] <- sapply(p, is.palindrome)
mx <- all_prods == max(all_prods[!!p])

col(all_prods)[mx]