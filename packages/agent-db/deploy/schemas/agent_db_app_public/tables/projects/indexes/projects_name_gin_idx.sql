-- Deploy: schemas/agent_db_app_public/tables/projects/indexes/projects_name_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/name/column
-- requires: schemas/agent_db_app_public/tables/venues/indexes/venues_name_gin_idx


CREATE INDEX projects_name_gin_idx ON "agent_db_app_public".projects USING gin ( name gin_trgm_ops );

