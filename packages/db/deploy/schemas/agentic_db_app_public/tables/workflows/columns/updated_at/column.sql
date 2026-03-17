-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/workflows/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".workflows 
  ADD COLUMN updated_at timestamptz;

