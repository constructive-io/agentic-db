-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/url/alterations/alt0000004152
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/url/column
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/title/column


ALTER TABLE "agent_db_app_public".venue_links 
  ALTER COLUMN url SET NOT NULL;

