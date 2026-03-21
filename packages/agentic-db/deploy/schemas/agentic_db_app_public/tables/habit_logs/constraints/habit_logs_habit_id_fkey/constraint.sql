-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/template_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".habit_logs 
  ADD CONSTRAINT habit_logs_habit_id_fkey 
    FOREIGN KEY(habit_id) 
    REFERENCES "agentic_db_app_public".habits (id) 
    ON DELETE CASCADE;

