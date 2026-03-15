-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/priority/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/status/alterations/alt0000002722


ALTER TABLE "agent_db_app_public".tasks 
  ADD COLUMN priority integer;

