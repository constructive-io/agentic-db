-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/places_id/column


ALTER TABLE "agentic_db_app_public".places_chunks 
  DROP COLUMN places_id RESTRICT;


