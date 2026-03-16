-- Deploy: schemas/agent_db_app_public/tables/sessions/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".sessions 
  ADD COLUMN created_at timestamptz;

