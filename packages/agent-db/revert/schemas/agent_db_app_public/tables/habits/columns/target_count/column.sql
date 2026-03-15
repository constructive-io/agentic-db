-- Revert: schemas/agent_db_app_public/tables/habits/columns/target_count/column


ALTER TABLE agent_db_app_public.habits 
  DROP COLUMN target_count RESTRICT;


