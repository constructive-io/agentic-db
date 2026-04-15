-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/url/alterations/alt0000013094


ALTER TABLE agentic_db_app_public.event_links 
  ALTER COLUMN url DROP NOT NULL;


