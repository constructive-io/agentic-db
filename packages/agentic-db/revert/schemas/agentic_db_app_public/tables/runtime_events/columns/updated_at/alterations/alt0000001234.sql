-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/updated_at/alterations/alt0000001234


ALTER TABLE "agentic_db_app_public".runtime_events 
  ALTER COLUMN updated_at DROP NOT NULL;


