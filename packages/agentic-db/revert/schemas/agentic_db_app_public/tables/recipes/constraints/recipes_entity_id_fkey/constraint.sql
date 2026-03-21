-- Revert: schemas/agentic_db_app_public/tables/recipes/constraints/recipes_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".recipes 
  DROP CONSTRAINT recipes_entity_id_fkey;


