-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/url/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/title/column


ALTER TABLE agent_db_app_public.venue_links 
  ADD COLUMN url text;

