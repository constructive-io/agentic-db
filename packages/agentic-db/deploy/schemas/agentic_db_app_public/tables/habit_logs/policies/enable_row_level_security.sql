-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/tags/column


ALTER TABLE "agentic_db_app_public".habit_logs 
  ENABLE ROW LEVEL SECURITY;

