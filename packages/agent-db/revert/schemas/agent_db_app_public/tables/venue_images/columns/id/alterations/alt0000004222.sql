-- Revert: schemas/agent_db_app_public/tables/venue_images/columns/id/alterations/alt0000004222


ALTER TABLE "agent_db_app_public".venue_images 
  ALTER COLUMN id DROP NOT NULL;


