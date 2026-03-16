-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/columns/updated_at/column


ALTER TABLE "agent_db_status_public".app_level_requirements 
  DROP COLUMN updated_at RESTRICT;


