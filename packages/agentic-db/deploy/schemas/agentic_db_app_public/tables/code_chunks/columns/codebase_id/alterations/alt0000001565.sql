-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/columns/codebase_id/alterations/alt0000001565
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/codebase_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/updated_at/alterations/alt0000001564


ALTER TABLE "agentic_db_app_public".code_chunks 
  ALTER COLUMN codebase_id SET NOT NULL;

