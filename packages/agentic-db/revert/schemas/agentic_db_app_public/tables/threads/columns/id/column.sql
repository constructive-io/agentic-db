-- Revert: schemas/agentic_db_app_public/tables/threads/columns/id/column


ALTER TABLE "agentic_db_app_public".threads 
  DROP COLUMN id RESTRICT;


