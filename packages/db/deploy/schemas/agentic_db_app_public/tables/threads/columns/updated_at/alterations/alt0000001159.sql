-- Deploy: schemas/agentic_db_app_public/tables/threads/columns/updated_at/alterations/alt0000001159
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/threads/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".threads 
  ALTER COLUMN updated_at SET NOT NULL;

