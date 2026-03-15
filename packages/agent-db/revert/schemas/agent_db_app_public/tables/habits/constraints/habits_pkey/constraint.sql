-- Revert: schemas/agent_db_app_public/tables/habits/constraints/habits_pkey/constraint


ALTER TABLE agent_db_app_public.habits 
  DROP CONSTRAINT habits_pkey;


