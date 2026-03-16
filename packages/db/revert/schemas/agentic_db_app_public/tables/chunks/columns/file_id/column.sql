-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/file_id/column


ALTER TABLE "agentic_db_app_public".chunks 
  DROP COLUMN file_id RESTRICT;


