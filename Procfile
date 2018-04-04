app: docker run --rm --name resume-app --publish $PORT:3000 --network resume --mount type=bind,source="$PWD",target=/resume --mount source=resume-gems,target=/usr/local/bundle resume:latest bin/rails server
db: docker run --rm --name resume-db --mount source=resume-db,target=/var/lib/postgresql/data --network resume postgres:10.3
dba: docker run --rm --name resume-dba --publish $PORT:8080 --network resume adminer:4.6
