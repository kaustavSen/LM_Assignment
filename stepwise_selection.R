# Loading the lung data set into memory
lung_data <- read.table("LungCapData.txt", sep = "\t", header = TRUE)

#Correlation Matrix and Scatter Plot matrix
print(cor(lung_data[1:3]))
plot(lung_data[1:3])

#Initial Model
model_init <- lm(LungCap ~ Height, data = lung_data)

#Full Model
model_full <- lm(LungCap ~ ., data = lung_data)

#Stepwise Regression
step(model_init, scope = list(upper = model_full), direction = "both")
