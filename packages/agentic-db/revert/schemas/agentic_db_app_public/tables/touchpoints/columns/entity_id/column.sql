-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".touchpoints 
  DROP COLUMN entity_id RESTRICT;


