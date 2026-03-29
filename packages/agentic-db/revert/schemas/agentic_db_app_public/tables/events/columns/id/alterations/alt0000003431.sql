-- Revert: schemas/agentic_db_app_public/tables/events/columns/id/alterations/alt0000003431


ALTER TABLE agentic_db_app_public.events 
  ALTER COLUMN id DROP NOT NULL;


