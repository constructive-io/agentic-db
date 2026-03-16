-- Deploy: schemas/agent_db_app_public/tables/activity_log/columns/activity_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/updated_at/alterations/alt0000002118


ALTER TABLE "agent_db_app_public".activity_log 
  ADD COLUMN activity_type text;

