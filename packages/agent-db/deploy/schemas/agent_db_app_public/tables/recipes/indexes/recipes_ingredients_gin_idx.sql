-- Deploy: schemas/agent_db_app_public/tables/recipes/indexes/recipes_ingredients_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/ingredients/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/indexes/workflow_steps_action_config_gin_idx


CREATE INDEX recipes_ingredients_gin_idx ON agent_db_app_public.recipes USING GIN ( ingredients );

