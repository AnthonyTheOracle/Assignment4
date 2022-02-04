
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
Bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 125, 176)
FirstRead <- c("bad", "bad", "bad", "bad", "good", "good", "good", "good", "NA", "bad")
SecondRead <- c("low", "low", "high", "high", "low", "low", "high", "high", "high", "high")
FinalDecision <- c("low", "high", "low", "high", "low", "high", "low", "high", "high", "high")

Observation <- cbind(Freq, Bloodp, FirstRead, SecondRead, FinalDecision)

Observation.df <- data.frame(Freq, Bloodp, FirstRead, SecondRead, FinalDecision)
Observation.df