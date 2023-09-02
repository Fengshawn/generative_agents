# use python 3.9.12 as base image
FROM python:3.9.12

# 
RUN apt-get update

# 安装 Python 依赖项
COPY requirements.txt /app/
RUN pip3 install --no-cache-dir -r /app/requirements.txt

# 设置工作目录
WORKDIR /app

# 启动应用程序
CMD ["python3", "app.py"]
