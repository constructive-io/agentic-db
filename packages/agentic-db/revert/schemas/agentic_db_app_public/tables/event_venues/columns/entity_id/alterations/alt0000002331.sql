-- Revert: schemas/agentic_db_app_public/tables/event_venues/columns/entity_id/alterations/alt0000002331


ALTER TABLE agentic_db_app_public.event_venues 
  ALTER COLUMN entity_id DROP NOT NULL;


