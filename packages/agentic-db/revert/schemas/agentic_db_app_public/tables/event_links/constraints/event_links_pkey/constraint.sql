-- Revert: schemas/agentic_db_app_public/tables/event_links/constraints/event_links_pkey/constraint


ALTER TABLE agentic_db_app_public.event_links 
  DROP CONSTRAINT event_links_pkey;


