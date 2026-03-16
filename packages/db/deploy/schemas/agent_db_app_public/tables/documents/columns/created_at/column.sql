-- Deploy: schemas/agent_db_app_public/tables/documents/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".documents 
  ADD COLUMN created_at timestamptz;

