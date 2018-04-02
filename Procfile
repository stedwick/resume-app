web: bin/rails server
db: docker run --rm --name resume-db --volume resume-db:/var/lib/postgresql/data --publish 5432:5432 --network resume postgres
dba: docker run --rm --name resume-dba -p $PORT:8080 --network resume adminer
