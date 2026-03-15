-- Revert: schemas/agent_db_app_public/tables/skills/columns/name/column


ALTER TABLE agent_db_app_public.skills 
  DROP COLUMN name RESTRICT;


