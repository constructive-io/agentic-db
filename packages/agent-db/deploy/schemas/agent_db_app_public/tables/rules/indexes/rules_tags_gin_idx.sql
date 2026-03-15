-- Deploy: schemas/agent_db_app_public/tables/rules/indexes/rules_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/tasks/indexes/tasks_tags_gin_idx


CREATE INDEX rules_tags_gin_idx ON agent_db_app_public.rules USING GIN ( tags );

