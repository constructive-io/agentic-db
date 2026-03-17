-- Revert: schemas/agentic_db_app_public/tables/threads/columns/title/column


ALTER TABLE "agentic_db_app_public".threads 
  DROP COLUMN title RESTRICT;


