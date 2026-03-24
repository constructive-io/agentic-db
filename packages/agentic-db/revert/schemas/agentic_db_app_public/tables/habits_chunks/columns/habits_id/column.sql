-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/habits_id/column


ALTER TABLE "agentic_db_app_public".habits_chunks 
  DROP COLUMN habits_id RESTRICT;


