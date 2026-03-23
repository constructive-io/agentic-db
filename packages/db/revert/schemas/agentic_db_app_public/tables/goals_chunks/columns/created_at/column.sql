-- Revert: schemas/agentic_db_app_public/tables/goals_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".goals_chunks 
  DROP COLUMN created_at RESTRICT;


