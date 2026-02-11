#
# Key Value to stop automated processes from running during deployment
# @note This is used for deploymeny and hard_reset_db
# @note `deploy_sql` command will mark deploy:status as complete
#
UPDATE `project_database`.`key_value`
  SET `value` = 'in-progress'
  WHERE `name` = 'deploy:status';

