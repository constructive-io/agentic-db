-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".repositories 
  ADD COLUMN updated_at timestamptz;

