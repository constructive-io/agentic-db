-- Revert: schemas/agentic_db_app_public/tables/habit_logs/constraints/habit_logs_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.habit_logs 
  DROP CONSTRAINT habit_logs_entity_id_fkey;


