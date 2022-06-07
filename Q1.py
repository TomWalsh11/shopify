import pandas as pd
import numpy as np

sneakers = pd.read_csv("sneakers.csv")
print(sneakers.head(5))

# (a) There could be outliers in our data, we must investigate further

print(sneakers['order_amount'].describe())

# From this we can see that the mean is $3145.13 but the median is $284, suggesting that the mean may be influenced by large outliers.

# A better way to evaluate the data would be to use the median.

# (b) I would report the median for this dataset.

# (c)

print(sneakers['order_amount'].median())

# Its value is $284