# Docker - Import Environment variables in CRONTAB

##### Background:
Usually, Environment variables are not imported in cron jobs. I'm sharing a way to automatically import all the env variables in the cron scripts without developers having to worry. Developers should just focus on adding cronjobs.

##### Directory Structure:
|-- crons : Here you will add your crons

|-- display_environment_variable.sh : Sample script to display env variable TZ

|-- Dockerfile : Docker file with set of commands

|-- entrypoint.sh : Adds the cron to crontab and runs rest of the commands

|-- README.md


##### Build docker image:
`sudo docker build . --name=docker-cron-env-variables`

##### Run Container
`sudo docker run -dit --name=docker-cron-env-variables docker-cron-env-variables`

##### Output (ENV shall be displayed every minute)
`sudo docker logs -f docker-cron-env-variables`
