# Housing Price Prediction and Analysis

## Overview

This project explores the factors that influence residential housing prices and develops machine learning models capable of predicting property values.

Using a dataset of residential properties, the analysis examines how characteristics such as house size, number of bathrooms, parking availability, location preferences, and amenities contribute to overall market value.

The project demonstrates a complete data science workflow, including:

* Data cleaning and preprocessing
* Exploratory Data Analysis (EDA)
* Feature engineering
* Machine learning model development
* Model evaluation and comparison
* Business insights and recommendations

---

## Business Problem

Accurately estimating housing prices is important for:

* Home buyers
* Property investors
* Real estate agencies
* Financial institutions

The objective of this project is to identify the most influential housing characteristics and build predictive models that can estimate property values using available property features.

---

## Dataset

The dataset contains information on residential properties, including:

| Feature          | Description                        |
| ---------------- | ---------------------------------- |
| price            | House sale price (target variable) |
| area             | Property area                      |
| bedrooms         | Number of bedrooms                 |
| bathrooms        | Number of bathrooms                |
| stories          | Number of stories                  |
| mainroad         | Access to a main road              |
| guestroom        | Presence of a guest room           |
| basement         | Presence of a basement             |
| hotwaterheating  | Hot water heating availability     |
| airconditioning  | Air conditioning availability      |
| parking          | Number of parking spaces           |
| prefarea         | Located in a preferred area        |
| furnishingstatus | Furnishing status                  |

Dataset Size: 545 residential properties

---

## Data Preparation

The following preprocessing steps were performed:

* Checked for missing values and duplicates
* Encoded binary categorical variables
* One-hot encoded furnishing status
* Applied a logarithmic transformation to area
* Scaled numerical features
* Generated polynomial features for selected models

---

## Exploratory Data Analysis

Exploratory analysis included:

* Price distribution analysis
* Numerical feature distributions
* Categorical feature distributions
* Correlation analysis
* Scatterplot analysis
* Outlier detection

### Key Observations

* Larger homes generally sold for higher prices.
* Houses located in preferred areas tended to command higher market values.
* Additional bathrooms and parking spaces were associated with increased prices.
* Air conditioning and other amenities positively influenced property values.

---

## Machine Learning Models

Several machine learning approaches were evaluated:

### Ridge Regression

Used as an interpretable baseline model with regularization to reduce overfitting.

### Random Forest Regressor

Used to capture nonlinear relationships and feature interactions.

### Tuned Random Forest

Hyperparameter optimization was performed to improve predictive performance.

### XGBoost Regressor

Implemented to evaluate a gradient boosting approach for structured tabular data.

---

## Model Performance

Models were compared using:

* R² Score
* Mean Absolute Error (MAE)
* Root Mean Squared Error (RMSE)

### Best Model

The strongest-performing model achieved:

* R² ≈ 0.67
* MAE ≈ $893,000

This indicates the model can explain approximately 67% of the variation in housing prices using the available features.

---

## Feature Importance

The analysis identified several key drivers of housing price:

1. Property Area
2. Number of Bathrooms
3. Preferred Area Status
4. Parking Availability
5. Main Road Access

These factors consistently demonstrated strong influence across multiple modeling approaches.

---

## Business Insights

Based on the analysis:

* Property size is the strongest determinant of housing value.
* Location desirability significantly impacts pricing.
* Additional bathrooms contribute more value than additional bedrooms.
* Parking availability increases property attractiveness and value.
* Furnishing status influences final sale prices.

---

## Technologies Used

* Python
* Pandas
* NumPy
* Matplotlib
* Seaborn
* Scikit-Learn
* XGBoost

---

## Repository Structure

```text
housing-price-analysis/
│
├── Housing.csv
├── Housing_Price_Prediction_and_Analysis.ipynb
├── README.md
└── images/
```

---

## Future Improvements

Potential future enhancements include:

* Geospatial analysis
* Neighborhood-level economic indicators
* LightGBM implementation
* CatBoost implementation
* Additional feature engineering

---

## Author

This project was completed as part of a Data Science portfolio to demonstrate skills in data cleaning, exploratory analysis, machine learning, and business-focused data interpretation.
