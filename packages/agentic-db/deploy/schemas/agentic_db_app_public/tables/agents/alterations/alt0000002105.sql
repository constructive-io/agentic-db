-- Deploy: schemas/agentic_db_app_public/tables/agents/alterations/alt0000002105
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_started_at_idx


ALTER TABLE "agentic_db_app_public".agents 
  DISABLE ROW LEVEL SECURITY;

