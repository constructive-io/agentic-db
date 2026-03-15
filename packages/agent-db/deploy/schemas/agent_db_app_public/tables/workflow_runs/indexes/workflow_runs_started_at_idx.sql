-- Deploy: schemas/agent_db_app_public/tables/workflow_runs/indexes/workflow_runs_started_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_runs/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/started_at/column
-- requires: schemas/agent_db_app_public/tables/workflow_runs/indexes/workflow_runs_status_idx


CREATE INDEX workflow_runs_started_at_idx ON "agent_db_app_public".workflow_runs USING BTREE ( started_at );

