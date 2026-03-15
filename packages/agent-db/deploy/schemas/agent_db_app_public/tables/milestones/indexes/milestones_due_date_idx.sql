-- Deploy: schemas/agent_db_app_public/tables/milestones/indexes/milestones_due_date_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/due_date/column
-- requires: schemas/agent_db_app_public/tables/milestones/indexes/milestones_project_id_idx


CREATE INDEX milestones_due_date_idx ON agent_db_app_public.milestones USING BTREE ( due_date );

