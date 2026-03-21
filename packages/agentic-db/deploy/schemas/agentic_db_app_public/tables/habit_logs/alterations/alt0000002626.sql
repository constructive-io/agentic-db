-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/alterations/alt0000002626
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/tags/column


ALTER TABLE "agentic_db_app_public".habit_logs 
  DISABLE ROW LEVEL SECURITY;

