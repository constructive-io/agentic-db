-- Deploy: schemas/agent_db_app_public/tables/images/columns/id/alterations/alt0000001702
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/id/column
-- requires: schemas/agent_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agent_db_app_public".images 
  ALTER COLUMN id SET NOT NULL;

