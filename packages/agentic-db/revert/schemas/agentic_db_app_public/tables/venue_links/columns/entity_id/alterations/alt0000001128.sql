-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/entity_id/alterations/alt0000001128


ALTER TABLE "agentic_db_app_public".venue_links 
  ALTER COLUMN entity_id DROP NOT NULL;


