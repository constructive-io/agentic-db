-- Deploy: schemas/agent_db_app_public/tables/user_settings/indexes/user_settings_value_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/value/column
-- requires: schemas/agent_db_app_public/tables/recipes/indexes/recipes_ingredients_gin_idx


CREATE INDEX user_settings_value_gin_idx ON "agent_db_app_public".user_settings USING GIN ( value );

