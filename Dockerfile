
FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "score_churn.py", "--input", "data/new_customers.csv", "--output", "results/predictions.csv"]
