-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/id/alterations/alt0000001481


ALTER TABLE "agentic_db_app_public".runtime_events 
  ALTER COLUMN id DROP NOT NULL;


