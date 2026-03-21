-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/url/alterations/alt0000001887
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/url/column
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/title/column


ALTER TABLE "agentic_db_app_public".venue_links 
  ALTER COLUMN url SET NOT NULL;

