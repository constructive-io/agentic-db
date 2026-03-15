-- Revert: schemas/agent_db_app_public/tables/habits/constraints/habits_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.habits 
  DROP CONSTRAINT habits_entity_id_fkey;


