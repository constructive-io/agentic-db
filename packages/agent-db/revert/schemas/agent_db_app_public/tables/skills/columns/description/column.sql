-- Revert: schemas/agent_db_app_public/tables/skills/columns/description/column


ALTER TABLE agent_db_app_public.skills 
  DROP COLUMN description RESTRICT;


