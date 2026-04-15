-- Deploy: schemas/agentic_db_app_public/tables/venue_links/alterations/alt0000001130
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table


ALTER TABLE "agentic_db_app_public".venue_links 
  DISABLE ROW LEVEL SECURITY;

