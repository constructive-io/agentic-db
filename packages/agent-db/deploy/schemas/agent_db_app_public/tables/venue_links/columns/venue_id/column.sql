-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/venue_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/event_links/constraints/event_links_event_id_fkey/constraint


ALTER TABLE agent_db_app_public.venue_links 
  ADD COLUMN venue_id uuid;

