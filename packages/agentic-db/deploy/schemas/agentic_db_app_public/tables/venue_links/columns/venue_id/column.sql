-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/indexes/event_links_event_id_idx


ALTER TABLE agentic_db_app_public.venue_links 
  ADD COLUMN venue_id uuid;

