-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/updated_at/alterations/alt0000000948


ALTER TABLE agent_db_app_public.venue_links 
  ADD COLUMN title text;

