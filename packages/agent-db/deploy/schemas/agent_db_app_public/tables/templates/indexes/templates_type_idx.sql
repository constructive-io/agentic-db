-- Deploy: schemas/agent_db_app_public/tables/templates/indexes/templates_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/type/column
-- requires: schemas/agent_db_app_public/tables/recipes/indexes/recipes_difficulty_idx


CREATE INDEX templates_type_idx ON agent_db_app_public.templates USING BTREE ( type );

