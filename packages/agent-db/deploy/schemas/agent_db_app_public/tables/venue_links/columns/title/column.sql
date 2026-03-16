-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/updated_at/alterations/alt0000001824


ALTER TABLE "agent_db_app_public".venue_links 
  ADD COLUMN title text;

