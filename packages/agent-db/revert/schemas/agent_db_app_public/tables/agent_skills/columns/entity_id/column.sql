-- Revert: schemas/agent_db_app_public/tables/agent_skills/columns/entity_id/column


ALTER TABLE agent_db_app_public.agent_skills 
  DROP COLUMN entity_id RESTRICT;


