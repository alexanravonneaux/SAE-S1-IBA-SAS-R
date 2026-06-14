# Table de données
floraison <- matrix(c(40, 75, 63, 15, 12, 12), nrow = 2, byrow = TRUE)
rownames(floraison) <- c("Ont_fleuri", "Nont_pas_fleuri")
colnames(floraison) <- c("Engrais_A", "Engrais_B", "Engrais_C")

# Affichage
floraison

# Test du Khi-2
test_khi2 <- chisq.test(floraison)
print(test_khi2)

# Effectifs théoriques
test_khi2$expected

# Contributions au Khi-2 (résidus au carré)
test_khi2$residuals^2

# V de Cramér
n <- sum(floraison)
p <- nrow(floraison)
q <- ncol(floraison)
m <- min(p - 1, q - 1)
V <- sqrt(test_khi2$statistic / (n * m))
V

# Diagrammes en barres conditionnels
par(mfrow = c(1, 3))
barplot(floraison[, 1] / sum(floraison[, 1]), ylim = c(0, 0.5), main = "Angrais A", col =c("blue", "red"))
barplot(floraison[, 2] / sum(floraison[, 2]), ylim = c(0, 0.5), main = "Angrais B",col =c("blue", "red")
barplot(floraison[, 3] / sum(floraison[, 3]), ylim = c(0, 0.5), main = "Angrais C", col =c("blue", "red")

