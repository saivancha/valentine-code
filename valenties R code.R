#install.packages("ggplot2")

# Enter the name of person you love
mylove = "???"

# Load ggplot2 package
library(ggplot2)

# Create data frame
k = seq(0, 2*pi, pi/60)
mydata = data.frame(
  x = 16*sin(k)^3 +25,
  y = 13*cos(k) - 5*cos(2*k) - 2*cos(3*k) - cos(4*k) +20
)

# Generate Plot
Valentine = ggplot(data = mydata, aes(x, y)) +
  geom_polygon(aes(group = 1), fill = "red") +
  geom_text(aes(x = 25, y = 20, label = "Happy Valentine's Day!"),
            size = 8, colour = "white") +
  geom_text(aes(x = 15, y = 5, label = paste("To :", mylove)),
            size = 5, colour = "#444444")

Valentine