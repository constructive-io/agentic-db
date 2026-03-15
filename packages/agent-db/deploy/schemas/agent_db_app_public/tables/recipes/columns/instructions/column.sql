-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/instructions/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/ingredients/column


ALTER TABLE agent_db_app_public.recipes 
  ADD COLUMN instructions jsonb;

