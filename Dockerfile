FROM python:3.11-slim

WORKDIR /app

# 必要なライブラリをインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# プロジェクトをコピー
COPY . .

# コンテナ起動時のデフォルトコマンド（開発用）
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
