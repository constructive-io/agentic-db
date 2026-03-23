-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/source/column


ALTER TABLE "agentic_db_app_public".runtime_events 
  DROP COLUMN source RESTRICT;


