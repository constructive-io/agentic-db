-- Revert: schemas/agentic_db_app_public/tables/trips/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".trips 
  DROP COLUMN entity_id RESTRICT;


