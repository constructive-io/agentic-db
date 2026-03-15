-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/columns/name/alterations/alt0000003373


ALTER TABLE "agent_db_status_public".app_level_requirements 
  ALTER COLUMN name DROP NOT NULL;


