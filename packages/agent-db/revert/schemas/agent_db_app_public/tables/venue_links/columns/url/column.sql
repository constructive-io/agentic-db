-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/url/column


ALTER TABLE "agent_db_app_public".venue_links 
  DROP COLUMN url RESTRICT;


