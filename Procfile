app: docker run --rm --name resume-app --publish $PORT:3000 --network resume --mount type=bind,source="$PWD",target=/myapp resume bin/rails server
db: docker run --rm --name resume-db --mount source=resume-db,target=/var/lib/postgresql/data --publish 5432:5432 --network resume postgres
dba: docker run --rm --name resume-dba --publish $PORT:8080 --network resume adminer
