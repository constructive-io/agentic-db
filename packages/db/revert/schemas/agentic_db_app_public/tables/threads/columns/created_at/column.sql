-- Revert: schemas/agentic_db_app_public/tables/threads/columns/created_at/column


ALTER TABLE "agentic_db_app_public".threads 
  DROP COLUMN created_at RESTRICT;


