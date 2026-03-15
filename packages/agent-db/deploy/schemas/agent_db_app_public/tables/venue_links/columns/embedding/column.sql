-- Deploy: schemas/agent_db_app_public/tables/venue_links/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venue_links/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/url/alterations/alt0000002653


ALTER TABLE "agent_db_app_public".venue_links 
  ADD COLUMN embedding vector(768);

