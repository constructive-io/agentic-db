-- Revert: schemas/agentic_db_app_public/tables/skills/constraints/skills_agent_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".skills 
  DROP CONSTRAINT skills_agent_id_fkey;


