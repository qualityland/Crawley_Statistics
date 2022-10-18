
worms <- read.csv("data/worms.csv")
# variable names
names(worms)
worms

## Subscripts
# first three rows
worms[, 1:3]

# columns 5 to 15
worms[5:15,]

# using logical tests
worms$Area > 3 & worms$Slope < 3
worms[worms$Area > 3 & worms$Slope < 3, ]

## Sorting
# row index sorted by Area (asc)
order(worms$Area)
# df ordered by Area (asc)
worms[order(worms$Area), ]
# only numeric columns
worms[order(worms$Area), c(2, 3, 5, 7)]

# Worm.density sorted by Soil.pH (desc)
# CAVE: descending index for rows with same Soil.pH
worms[rev(order(worms$Soil.pH)), c(5, 7)]
# CAVE: ascending index for rows with same Soil.pH
worms[order(worms$Soil.pH, decreasing = TRUE), c(5, 7)]

# Summary
# output for Field.Name and Vegetation differs from R-3.x, since character
# vectors are not converted to factors anymore.
summary(worms)

# group by Vegetation and calculate mean of Worm.density for each group
with(worms, tapply(X = Worm.density,   # variable on which FUN to apply
                   INDEX = Vegetation, # categorical variable to group by
                   FUN = mean)) |>     # function to apply
  round(digits = 2)

# mean values of all the numeric variables summarized at the same time
# group by Vegetation and calculate mean of each numeric variable
aggregate(
  x = worms[, c(2, 3, 5, 7)],
  by = list(worms$Vegetation),
  FUN = mean
)


aggregate(
  x = worms[, c(2, 3, 5, 7)],
  by = list(Community = worms$Vegetation), # column name for group 1
  FUN = mean
)

# group by Damp and Vegetation
# note: missing combinations generate no output
aggregate(
  x = worms[, c(2, 3, 5, 7)],
  by = list(Moisture = worms$Damp, Community = worms$Vegetation),
  FUN = mean
)

# in contrast: tapply generates also ouput for missing combinations (NA)
with(worms, tapply(X = Slope,
                   INDEX = list(Damp, Vegetation),
                   FUN = mean))


## Get to know your Data

data <- read.csv("data/das.csv")
head(data)

# plot response variable y
plot(data$y)

# index of the outlier(s)
which(data$y > 10)

# correct outlier (typing error)
data$y[50] <- 2.179386

plot(data$y)


# Q&A
# how to find out which columns are numeric?
is.numeric(worms)
