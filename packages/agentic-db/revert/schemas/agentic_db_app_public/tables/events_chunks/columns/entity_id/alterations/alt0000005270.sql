-- Revert: schemas/agentic_db_app_public/tables/events_chunks/columns/entity_id/alterations/alt0000005270


ALTER TABLE agentic_db_app_public.events_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


