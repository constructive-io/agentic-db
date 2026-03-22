-- Deploy: schemas/agentic_db_app_public/tables/tags/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tags/table
-- requires: schemas/agentic_db_app_public/tables/tags/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".tags 
  ADD COLUMN updated_at timestamptz;

