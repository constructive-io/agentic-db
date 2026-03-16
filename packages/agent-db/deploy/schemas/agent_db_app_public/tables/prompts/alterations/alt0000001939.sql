-- Deploy: schemas/agent_db_app_public/tables/prompts/alterations/alt0000001939
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/prompts/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/embedding/column


ALTER TABLE "agent_db_app_public".prompts 
  DISABLE ROW LEVEL SECURITY;

