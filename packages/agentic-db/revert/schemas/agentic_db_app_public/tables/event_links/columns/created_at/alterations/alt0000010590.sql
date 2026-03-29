-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/created_at/alterations/alt0000010590


ALTER TABLE agentic_db_app_public.event_links 
  ALTER COLUMN created_at DROP NOT NULL;


