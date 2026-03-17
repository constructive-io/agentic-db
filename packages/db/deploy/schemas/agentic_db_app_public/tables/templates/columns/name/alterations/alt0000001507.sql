-- Deploy: schemas/agentic_db_app_public/tables/templates/columns/name/alterations/alt0000001507
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/templates/table
-- requires: schemas/agentic_db_app_public/tables/templates/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/templates/columns/updated_at/alterations/alt0000001506


ALTER TABLE "agentic_db_app_public".templates 
  ALTER COLUMN name SET NOT NULL;

