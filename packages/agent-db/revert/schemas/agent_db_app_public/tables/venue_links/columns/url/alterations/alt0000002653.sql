-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/url/alterations/alt0000002653


ALTER TABLE "agent_db_app_public".venue_links 
  ALTER COLUMN url DROP NOT NULL;


