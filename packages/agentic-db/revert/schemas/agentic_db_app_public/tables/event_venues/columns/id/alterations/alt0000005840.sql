-- Revert: schemas/agentic_db_app_public/tables/event_venues/columns/id/alterations/alt0000005840


ALTER TABLE agentic_db_app_public.event_venues 
  ALTER COLUMN id DROP NOT NULL;


