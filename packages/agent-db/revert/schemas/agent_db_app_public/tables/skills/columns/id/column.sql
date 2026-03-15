-- Revert: schemas/agent_db_app_public/tables/skills/columns/id/column


ALTER TABLE agent_db_app_public.skills 
  DROP COLUMN id RESTRICT;


