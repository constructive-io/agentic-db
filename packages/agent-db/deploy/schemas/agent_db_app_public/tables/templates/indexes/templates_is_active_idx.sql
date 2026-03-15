-- Deploy: schemas/agent_db_app_public/tables/templates/indexes/templates_is_active_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/is_active/column
-- requires: schemas/agent_db_app_public/tables/templates/indexes/templates_type_idx


CREATE INDEX templates_is_active_idx ON agent_db_app_public.templates USING BTREE ( is_active );

