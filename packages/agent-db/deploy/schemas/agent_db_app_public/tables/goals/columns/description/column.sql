-- Deploy: schemas/agent_db_app_public/tables/goals/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/title/alterations/alt0000004263


ALTER TABLE "agent_db_app_public".goals 
  ADD COLUMN description text;

