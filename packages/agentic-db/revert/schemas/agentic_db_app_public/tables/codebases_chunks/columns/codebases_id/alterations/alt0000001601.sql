-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/columns/codebases_id/alterations/alt0000001601


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  ALTER COLUMN codebases_id DROP NOT NULL;


