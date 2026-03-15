-- Deploy: schemas/agent_db_app_public/tables/images/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agent_db_app_public".images 
  ENABLE ROW LEVEL SECURITY;

