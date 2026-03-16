-- Deploy: schemas/agent_db_app_public/tables/goals/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent_db_app_public".goals 
  ENABLE ROW LEVEL SECURITY;

