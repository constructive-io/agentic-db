-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/created_at/column


ALTER TABLE "agentic_db_app_public".runtime_events 
  DROP COLUMN created_at RESTRICT;


