-- Deploy: schemas/agentic_db_app_public/tables/sessions/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/sessions/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".sessions 
  ADD COLUMN updated_at timestamptz;

