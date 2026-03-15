-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/created_at/alterations/alt0000002649


ALTER TABLE "agent_db_app_public".venue_links 
  ALTER COLUMN created_at DROP NOT NULL;


