-- Deploy: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_action_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/action/column
-- requires: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_target_id_idx


CREATE INDEX activity_logs_action_idx ON agent_db_app_public.activity_log USING BTREE ( action );

