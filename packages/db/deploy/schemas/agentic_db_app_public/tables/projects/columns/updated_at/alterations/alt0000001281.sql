-- Deploy: schemas/agentic_db_app_public/tables/projects/columns/updated_at/alterations/alt0000001281
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".projects 
  ALTER COLUMN updated_at SET NOT NULL;

