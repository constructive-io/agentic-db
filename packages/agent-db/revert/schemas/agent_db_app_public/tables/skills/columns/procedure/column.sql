-- Revert: schemas/agent_db_app_public/tables/skills/columns/procedure/column


ALTER TABLE agent_db_app_public.skills 
  DROP COLUMN procedure RESTRICT;


