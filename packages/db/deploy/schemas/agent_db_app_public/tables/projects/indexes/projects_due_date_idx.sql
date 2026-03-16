-- Deploy: schemas/agent_db_app_public/tables/projects/indexes/projects_due_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/due_date/column
-- requires: schemas/agent_db_app_public/tables/projects/indexes/projects_start_date_idx


CREATE INDEX projects_due_date_idx ON "agent_db_app_public".projects USING BTREE ( due_date );

