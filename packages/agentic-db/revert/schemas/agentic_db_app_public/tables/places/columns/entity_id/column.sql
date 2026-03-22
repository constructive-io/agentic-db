-- Revert: schemas/agentic_db_app_public/tables/places/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".places 
  DROP COLUMN entity_id RESTRICT;


