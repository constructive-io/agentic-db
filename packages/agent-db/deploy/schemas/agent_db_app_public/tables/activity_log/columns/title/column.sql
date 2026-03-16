-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/activity_type/alterations/alt0000002119


ALTER TABLE "agent_db_app_public".activity_log 
  ADD COLUMN title text;

