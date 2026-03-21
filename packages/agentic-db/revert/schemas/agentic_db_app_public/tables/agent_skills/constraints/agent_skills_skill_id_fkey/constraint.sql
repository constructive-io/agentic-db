-- Revert: schemas/agentic_db_app_public/tables/agent_skills/constraints/agent_skills_skill_id_fkey/constraint


ALTER TABLE agentic_db_app_public.agent_skills 
  DROP CONSTRAINT agent_skills_skill_id_fkey;


