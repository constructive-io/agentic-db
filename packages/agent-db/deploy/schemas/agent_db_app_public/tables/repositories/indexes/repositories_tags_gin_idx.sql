-- Deploy: schemas/agent_db_app_public/tables/repositories/indexes/repositories_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/projects/indexes/projects_tags_gin_idx


CREATE INDEX repositories_tags_gin_idx ON agent_db_app_public.repositories USING GIN ( tags );

