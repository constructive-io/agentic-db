-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/file_path/alterations/alt0000001618


ALTER TABLE "agentic_db_app_public".code_chunks 
  ALTER COLUMN file_path DROP NOT NULL;


