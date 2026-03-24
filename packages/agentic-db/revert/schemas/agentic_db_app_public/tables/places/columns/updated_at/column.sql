-- Revert: schemas/agentic_db_app_public/tables/places/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".places 
  DROP COLUMN updated_at RESTRICT;


