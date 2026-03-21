-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  DROP COLUMN entity_id RESTRICT;


