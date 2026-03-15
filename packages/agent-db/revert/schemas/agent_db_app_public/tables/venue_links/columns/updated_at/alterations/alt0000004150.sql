-- Revert: schemas/agent_db_app_public/tables/venue_links/columns/updated_at/alterations/alt0000004150


ALTER TABLE "agent_db_app_public".venue_links 
  ALTER COLUMN updated_at DROP NOT NULL;


