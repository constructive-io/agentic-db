-- Revert: schemas/agent_db_app_public/tables/venue_images/columns/venue_id/alterations/alt0000001845


ALTER TABLE "agent_db_app_public".venue_images 
  ALTER COLUMN venue_id DROP NOT NULL;


