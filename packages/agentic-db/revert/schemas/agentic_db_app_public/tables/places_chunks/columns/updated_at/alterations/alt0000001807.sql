-- Revert: schemas/agentic_db_app_public/tables/places_chunks/columns/updated_at/alterations/alt0000001807


ALTER TABLE "agentic_db_app_public".places_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


