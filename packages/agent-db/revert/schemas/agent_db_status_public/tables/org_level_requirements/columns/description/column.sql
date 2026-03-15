-- Revert: schemas/agent_db_status_public/tables/org_level_requirements/columns/description/column


ALTER TABLE agent_db_status_public.org_level_requirements 
  DROP COLUMN description RESTRICT;


