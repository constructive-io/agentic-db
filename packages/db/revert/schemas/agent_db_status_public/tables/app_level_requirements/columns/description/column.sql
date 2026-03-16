-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/columns/description/column


ALTER TABLE "agent_db_status_public".app_level_requirements 
  DROP COLUMN description RESTRICT;


