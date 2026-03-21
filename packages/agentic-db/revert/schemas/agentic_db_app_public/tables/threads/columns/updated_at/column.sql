-- Revert: schemas/agentic_db_app_public/tables/threads/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".threads 
  DROP COLUMN updated_at RESTRICT;


