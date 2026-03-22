-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".project_chunks 
  DROP COLUMN embedding RESTRICT;


