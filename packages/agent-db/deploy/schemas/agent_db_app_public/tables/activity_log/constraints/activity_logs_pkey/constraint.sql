-- Deploy: schemas/agent_db_app_public/tables/activity_log/constraints/activity_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE agent_db_app_public.activity_log 
  ADD CONSTRAINT activity_logs_pkey PRIMARY KEY (id);

