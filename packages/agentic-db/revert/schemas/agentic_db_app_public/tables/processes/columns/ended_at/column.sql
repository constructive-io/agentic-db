-- Revert: schemas/agentic_db_app_public/tables/processes/columns/ended_at/column


ALTER TABLE "agentic_db_app_public".processes 
  DROP COLUMN ended_at RESTRICT;


