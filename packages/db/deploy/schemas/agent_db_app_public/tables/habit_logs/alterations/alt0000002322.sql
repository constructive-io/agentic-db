-- Deploy: schemas/agent_db_app_public/tables/habit_logs/alterations/alt0000002322
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/tags/column


ALTER TABLE "agent_db_app_public".habit_logs 
  DISABLE ROW LEVEL SECURITY;

