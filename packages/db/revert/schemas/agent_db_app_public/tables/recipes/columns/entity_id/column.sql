-- Revert: schemas/agent_db_app_public/tables/recipes/columns/entity_id/column


ALTER TABLE "agent_db_app_public".recipes 
  DROP COLUMN entity_id RESTRICT;


