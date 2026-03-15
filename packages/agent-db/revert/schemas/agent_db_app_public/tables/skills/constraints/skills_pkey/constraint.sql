-- Revert: schemas/agent_db_app_public/tables/skills/constraints/skills_pkey/constraint


ALTER TABLE agent_db_app_public.skills 
  DROP CONSTRAINT skills_pkey;


