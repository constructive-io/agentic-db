-- Deploy: schemas/agent_db_app_public/tables/recipes/indexes/recipes_cuisine_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/cuisine/column
-- requires: schemas/agent_db_app_public/tables/notifications/indexes/notifications_read_at_idx


CREATE INDEX recipes_cuisine_idx ON agent_db_app_public.recipes USING BTREE ( cuisine );

