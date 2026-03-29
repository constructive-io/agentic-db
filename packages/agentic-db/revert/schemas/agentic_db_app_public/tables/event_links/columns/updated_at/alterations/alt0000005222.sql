-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/updated_at/alterations/alt0000005222


ALTER TABLE agentic_db_app_public.event_links 
  ALTER COLUMN updated_at DROP NOT NULL;


