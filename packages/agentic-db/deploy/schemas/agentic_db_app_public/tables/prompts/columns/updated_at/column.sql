-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".prompts 
  ADD COLUMN updated_at timestamptz;

