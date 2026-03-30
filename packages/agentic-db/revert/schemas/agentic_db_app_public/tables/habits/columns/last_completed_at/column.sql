-- Revert: schemas/agentic_db_app_public/tables/habits/columns/last_completed_at/column


ALTER TABLE "agentic_db_app_public".habits 
  DROP COLUMN last_completed_at RESTRICT;


