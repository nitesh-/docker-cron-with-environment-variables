# We are importing the cron from all /etc/cron.d/crons

crontab /etc/cron.d/crontab

# Starting the cron daemon. The & is important and will allow to execute scripts below
cron -f &

# You can execute any other script below this line
bash /var/scripts/display_environment_variable.sh >> /var/log/display_environment_variable.log 2>&1

# We'll tail logs 
tail -f /var/log/display_environment_variable.log