-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/constraints/habit_chunks_habit_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_goal_id_idx


ALTER TABLE agentic_db_app_public.habit_chunks 
  ADD CONSTRAINT habit_chunks_habit_id_fkey 
    FOREIGN KEY(habit_id) 
    REFERENCES agentic_db_app_public.habits (id) 
    ON DELETE CASCADE;

