FROM alpine

WORKDIR /app

# copy all files from repo to ensure all changes are included
# which will ensure a new image digest is generated
COPY . .

CMD ["cat", "README.md"]
