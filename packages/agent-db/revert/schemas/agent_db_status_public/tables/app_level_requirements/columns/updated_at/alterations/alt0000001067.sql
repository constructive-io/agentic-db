-- Revert: schemas/agent_db_status_public/tables/app_level_requirements/columns/updated_at/alterations/alt0000001067


ALTER TABLE "agent_db_status_public".app_level_requirements 
  ALTER COLUMN updated_at DROP DEFAULT;


