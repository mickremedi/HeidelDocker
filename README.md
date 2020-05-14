# HeidelDocker
Docker image setup to run HeidelTime

Prerequisite:
- Install Docker - <https://www.docker.com/>

Initial Setup Instructions (~3 minutes):
1. Clone this repo on personal computer
2. In the HeidelDocker folder, run 'docker-compose run heidel' (Make sure docker is running)
3. Once in the docker instance, run 'source heideltime_setup.sh'

To Test Heideltime after Initial Setup:
1. In the HeidelDocker folder, run 'docker-compose run heidel'
2. cd into heideltime-standalone folder
3. Run 'java -jar heideltime-standalone/de.unihd.dbs.heideltime.standalone.jar test.txt'

---
** This is a clean Ubuntu image, to add tools such as python, use 'apt install python3' **
