-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".venue_chunks 
  DROP COLUMN entity_id RESTRICT;


