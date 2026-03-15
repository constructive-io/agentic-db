-- Deploy: schemas/agent_db_app_public/tables/tasks/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/title/alterations/alt0000004219


ALTER TABLE "agent_db_app_public".tasks 
  ADD COLUMN description text;

