-- Deploy: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_activity_type_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/activity_type/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_completed_at_idx


CREATE INDEX habit_logs_activity_type_idx ON "agent_db_app_public".habit_logs USING BTREE ( activity_type );

