-- Revert: schemas/agentic_db_app_public/tables/venue_images/columns/id/alterations/alt0000001436


ALTER TABLE "agentic_db_app_public".venue_images 
  ALTER COLUMN id DROP NOT NULL;


