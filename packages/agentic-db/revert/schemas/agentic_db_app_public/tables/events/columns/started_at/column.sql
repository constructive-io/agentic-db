-- Revert: schemas/agentic_db_app_public/tables/events/columns/started_at/column


ALTER TABLE "agentic_db_app_public".events 
  DROP COLUMN started_at RESTRICT;


