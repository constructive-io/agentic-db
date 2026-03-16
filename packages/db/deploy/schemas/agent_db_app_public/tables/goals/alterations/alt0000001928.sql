-- Deploy: schemas/agent_db_app_public/tables/goals/alterations/alt0000001928
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent_db_app_public".goals 
  DISABLE ROW LEVEL SECURITY;

