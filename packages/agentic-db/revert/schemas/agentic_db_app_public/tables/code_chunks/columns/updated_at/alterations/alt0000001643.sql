-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/updated_at/alterations/alt0000001643


ALTER TABLE "agentic_db_app_public".code_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


