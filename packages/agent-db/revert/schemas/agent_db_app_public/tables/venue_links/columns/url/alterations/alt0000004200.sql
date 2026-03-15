-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/url/alterations/alt0000004200


ALTER TABLE "agent_db_app_public".venue_links 
  ALTER COLUMN url DROP NOT NULL;


