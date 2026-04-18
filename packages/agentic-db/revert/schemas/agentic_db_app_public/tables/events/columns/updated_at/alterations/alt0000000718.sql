-- Revert: schemas/agentic_db_app_public/tables/events/columns/updated_at/alterations/alt0000000718


ALTER TABLE agentic_db_app_public.events 
  ALTER COLUMN updated_at DROP NOT NULL;


