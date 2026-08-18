FROM nginx:latest

WORKDIR /app

RUN apt update && apt install -y && apt clean

COPY . .

EXPOSE 80

CMD ["nginx", "-c", "daemon-off;"]
