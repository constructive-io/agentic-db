-- Deploy: schemas/agent_db_app_public/tables/ideas/indexes/ideas_content_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/content/column
-- requires: schemas/agent_db_app_public/tables/workflows/indexes/workflows_name_gin_idx


CREATE INDEX ideas_content_gin_idx ON "agent_db_app_public".ideas USING gin ( content gin_trgm_ops );

