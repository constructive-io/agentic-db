-- Deploy: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_target_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/target_id/column
-- requires: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_target_type_idx


CREATE INDEX activity_logs_target_id_idx ON "agent_db_app_public".activity_log USING BTREE ( target_id );

