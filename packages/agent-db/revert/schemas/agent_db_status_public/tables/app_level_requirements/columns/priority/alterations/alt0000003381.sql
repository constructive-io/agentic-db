-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/columns/priority/alterations/alt0000003381


ALTER TABLE "agent_db_status_public".app_level_requirements 
  ALTER COLUMN priority DROP NOT NULL;


