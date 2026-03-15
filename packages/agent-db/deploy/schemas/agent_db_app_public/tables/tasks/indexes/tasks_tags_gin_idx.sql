-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/interactions/indexes/interactions_tags_gin_idx


CREATE INDEX tasks_tags_gin_idx ON agent_db_app_public.tasks USING GIN ( tags );

