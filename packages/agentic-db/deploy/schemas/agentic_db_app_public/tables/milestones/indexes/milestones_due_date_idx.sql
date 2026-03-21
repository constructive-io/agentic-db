-- Deploy: schemas/agentic_db_app_public/tables/milestones/indexes/milestones_due_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/milestones/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/due_date/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_due_date_idx


CREATE INDEX milestones_due_date_idx ON "agentic_db_app_public".milestones USING BTREE ( due_date );

