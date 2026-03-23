-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/file_path/column


ALTER TABLE "agentic_db_app_public".code_chunks 
  DROP COLUMN file_path RESTRICT;


