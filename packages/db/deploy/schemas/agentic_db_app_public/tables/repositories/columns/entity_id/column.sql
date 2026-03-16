-- Deploy: schemas/agentic_db_app_public/tables/repositories/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".repositories 
  ADD COLUMN entity_id uuid;

