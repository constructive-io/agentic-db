-- Deploy: schemas/agentic_db_app_public/tables/threads/columns/title/alterations/alt0000001161
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/threads/columns/updated_at/alterations/alt0000001160


ALTER TABLE "agentic_db_app_public".threads 
  ALTER COLUMN title SET NOT NULL;

