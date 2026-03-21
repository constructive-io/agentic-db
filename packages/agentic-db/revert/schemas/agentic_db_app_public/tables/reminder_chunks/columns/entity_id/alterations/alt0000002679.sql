-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/entity_id/alterations/alt0000002679


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


