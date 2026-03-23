-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".runtime_events 
  DROP COLUMN updated_at RESTRICT;


