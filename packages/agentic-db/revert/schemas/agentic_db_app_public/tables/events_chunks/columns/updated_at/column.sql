-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".events_chunks 
  DROP COLUMN updated_at RESTRICT;


