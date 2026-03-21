-- Deploy: schemas/agentic_db_app_public/tables/projects/indexes/projects_due_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/due_date/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_start_date_idx


CREATE INDEX projects_due_date_idx ON agentic_db_app_public.projects USING BTREE ( due_date );

