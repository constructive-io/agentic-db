-- Deploy: schemas/agentic_db_app_public/tables/repositories/columns/name/alterations/alt0000001309
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/updated_at/alterations/alt0000001308


ALTER TABLE "agentic_db_app_public".repositories 
  ALTER COLUMN name SET NOT NULL;

