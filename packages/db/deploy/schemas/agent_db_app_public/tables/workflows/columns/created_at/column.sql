-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".workflows 
  ADD COLUMN created_at timestamptz;

