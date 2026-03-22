-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".event_chunks 
  DROP COLUMN updated_at RESTRICT;


