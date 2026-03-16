-- Deploy: schemas/agent_db_app_public/tables/goals/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/title/alterations/alt0000001936


ALTER TABLE "agent_db_app_public".goals 
  ADD COLUMN description text;

