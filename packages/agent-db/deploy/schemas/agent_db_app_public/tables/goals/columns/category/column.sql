-- Deploy: schemas/agent_db_app_public/tables/goals/columns/category/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/status/alterations/alt0000001094


ALTER TABLE agent_db_app_public.goals 
  ADD COLUMN category text;

