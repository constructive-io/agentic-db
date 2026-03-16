-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".recipes 
  DROP COLUMN entity_id RESTRICT;


