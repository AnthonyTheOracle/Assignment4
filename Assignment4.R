
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
Bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 125, 176)
FirstRead <- c("bad", "bad", "bad", "bad", "good", "good", "good", "good", "NA", "bad")
SecondRead <- c("low", "low", "high", "high", "low", "low", "high", "high", "high", "high")
FinalDecision <- c("low", "high", "low", "high", "low", "high", "low", "high", "high", "high")
Patients <- c("P1", "P2", "P3", "P4", "P5", "P6", "P7", "P8", "P9", "P10")

Observation <- cbind(Patients, Freq, Bloodp, FirstRead, SecondRead, FinalDecision)

Observation.df <- data.frame(Patients, Freq, Bloodp, FirstRead, SecondRead, FinalDecision)
Observation.df

