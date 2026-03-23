-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".events_chunks 
  DROP COLUMN created_at RESTRICT;


