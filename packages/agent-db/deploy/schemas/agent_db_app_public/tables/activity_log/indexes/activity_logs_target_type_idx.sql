-- Deploy: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_target_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/target_type/column
-- requires: schemas/agent_db_app_public/tables/workflow_runs/indexes/workflow_runs_started_at_idx


CREATE INDEX activity_logs_target_type_idx ON "agent_db_app_public".activity_log USING BTREE ( target_type );

