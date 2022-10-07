# start by pulling the python image
From python:3.8-alpine

# switch working directory
RUN mkdir /app
WORKDIR /app

# copy the requirements file into the image
COPY requirements.txt requirements.txt
# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# copy every content from the local file to the image
COPY . .

CMD flask run --host=0.0.0.0 --port=5000