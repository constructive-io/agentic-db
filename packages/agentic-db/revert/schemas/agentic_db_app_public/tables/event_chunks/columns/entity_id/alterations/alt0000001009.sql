-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/entity_id/alterations/alt0000001009


ALTER TABLE "agentic_db_app_public".event_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


