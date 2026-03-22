-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/constraints/habit_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.habit_chunks 
  DROP CONSTRAINT habit_chunks_pkey;


