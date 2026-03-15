-- Revert: schemas/agent_db_app_public/tables/skills/columns/abstract/column


ALTER TABLE agent_db_app_public.skills 
  DROP COLUMN abstract RESTRICT;


