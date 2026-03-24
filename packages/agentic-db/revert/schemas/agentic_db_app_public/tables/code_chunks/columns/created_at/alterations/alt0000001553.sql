-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/created_at/alterations/alt0000001553


ALTER TABLE "agentic_db_app_public".code_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


