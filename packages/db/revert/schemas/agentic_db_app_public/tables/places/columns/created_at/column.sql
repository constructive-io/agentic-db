-- Revert: schemas/agentic_db_app_public/tables/places/columns/created_at/column


ALTER TABLE "agentic_db_app_public".places 
  DROP COLUMN created_at RESTRICT;


