-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/priority/alterations/alt0000002723


ALTER TABLE "agent_db_app_public".tasks 
  ADD COLUMN tags citext[];

