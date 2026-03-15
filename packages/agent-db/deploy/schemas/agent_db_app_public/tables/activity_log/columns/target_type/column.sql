-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/target_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/action/alterations/alt0000001299


ALTER TABLE agent_db_app_public.activity_log 
  ADD COLUMN target_type text;

