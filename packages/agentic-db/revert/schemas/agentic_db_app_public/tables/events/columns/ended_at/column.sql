-- Revert: schemas/agentic_db_app_public/tables/events/columns/ended_at/column


ALTER TABLE "agentic_db_app_public".events 
  DROP COLUMN ended_at RESTRICT;


