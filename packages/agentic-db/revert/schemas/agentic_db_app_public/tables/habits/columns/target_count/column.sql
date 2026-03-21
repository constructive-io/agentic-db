-- Revert: schemas/agentic_db_app_public/tables/habits/columns/target_count/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN target_count RESTRICT;


