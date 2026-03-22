-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/entity_id/alterations/alt0000002279


ALTER TABLE "agentic_db_app_public".runtime_events 
  ALTER COLUMN entity_id DROP NOT NULL;


