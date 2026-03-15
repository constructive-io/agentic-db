-- Revert: schemas/agent_db_app_public/tables/agent_skills/constraints/agent_skills_agent_id_fkey/constraint


ALTER TABLE agent_db_app_public.agent_skills 
  DROP CONSTRAINT agent_skills_agent_id_fkey;


