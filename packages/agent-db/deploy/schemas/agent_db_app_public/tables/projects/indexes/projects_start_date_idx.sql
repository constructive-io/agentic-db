-- Deploy: schemas/agent_db_app_public/tables/projects/indexes/projects_start_date_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/start_date/column
-- requires: schemas/agent_db_app_public/tables/projects/indexes/projects_status_idx


CREATE INDEX projects_start_date_idx ON "agent_db_app_public".projects USING BTREE ( start_date );

