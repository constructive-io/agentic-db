-- Revert: schemas/agent_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE agent_db_app_public.recipes 
  DROP COLUMN embedding RESTRICT;


