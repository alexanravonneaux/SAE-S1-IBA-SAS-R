# Saisir les données dans une matrice
table <- matrix(c(115,55,60,115,30,90,80,30,50), nc=3, byrow = 3)
rownames(table) <- c("Bleu", "Rouge", "Vert")
colnames(table) <- c("A", "B", "C")

# Test du Khi-2
test_khi2 <- chisq.test(table)
print(test_khi2)

# Effectifs théoriques
test_khi2$expected

# Contributions au Khi-2 (résidus au carré)
test_khi2$residuals^2

# V de Cramér
n <- sum(table)
p <- nrow(table)
q <- ncol(table)
m <- min(p - 1, q - 1)
V <- sqrt(test_khi2$statistic / (n * m))
V

# Diagrammes en barres conditionnels
par(mfrow = c(1, 3))
barplot(table[, 1] / sum(table[, 1]), ylim = c(0, 0.5), main = "Région A")
barplot(table[, 2] / sum(table[, 2]), ylim = c(0, 0.5), main = "Région B")
barplot(table[, 3] / sum(table[, 3]), ylim = c(0, 0.5), main = "Région C")

