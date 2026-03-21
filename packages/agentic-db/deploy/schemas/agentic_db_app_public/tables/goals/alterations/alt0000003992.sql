-- Deploy: schemas/agentic_db_app_public/tables/goals/alterations/alt0000003992
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger/column


ALTER TABLE agentic_db_app_public.goals 
  DISABLE ROW LEVEL SECURITY;

