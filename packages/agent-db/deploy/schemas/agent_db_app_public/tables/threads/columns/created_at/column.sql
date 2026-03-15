-- Deploy: schemas/agent_db_app_public/tables/threads/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".threads 
  ADD COLUMN created_at timestamptz;

