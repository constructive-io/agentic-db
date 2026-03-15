-- Deploy: schemas/agent_db_app_public/tables/milestones/indexes/milestones_status_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/status/column
-- requires: schemas/agent_db_app_public/tables/milestones/indexes/milestones_due_date_idx


CREATE INDEX milestones_status_idx ON agent_db_app_public.milestones USING BTREE ( status );

