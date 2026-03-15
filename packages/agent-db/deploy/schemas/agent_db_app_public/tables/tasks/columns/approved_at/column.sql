-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/approved_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/approval_status/alterations/alt0000002934


ALTER TABLE "agent_db_app_public".tasks 
  ADD COLUMN approved_at timestamptz;

