FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Copy the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /main/

# Upgrade pip and install requirements
RUN pip install --upgrade pip && \
    pip install -r /main/requirements.txt

# Copy the rest of the application
COPY . /main