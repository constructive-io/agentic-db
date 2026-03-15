-- Deploy: schemas/agent_db_app_public/tables/projects/indexes/projects_status_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/status/column
-- requires: schemas/agent_db_app_public/tables/sessions/indexes/sessions_compression_count_idx


CREATE INDEX projects_status_idx ON agent_db_app_public.projects USING BTREE ( status );

