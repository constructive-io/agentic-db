-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/entity_id/alterations/alt0000001331


ALTER TABLE "agentic_db_app_public".venue_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


