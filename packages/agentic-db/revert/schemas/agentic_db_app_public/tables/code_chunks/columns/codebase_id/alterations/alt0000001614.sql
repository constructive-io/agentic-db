-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/codebase_id/alterations/alt0000001614


ALTER TABLE "agentic_db_app_public".code_chunks 
  ALTER COLUMN codebase_id DROP NOT NULL;


