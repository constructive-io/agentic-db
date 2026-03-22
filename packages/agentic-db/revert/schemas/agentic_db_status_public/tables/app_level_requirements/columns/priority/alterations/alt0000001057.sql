-- Revert: schemas/agentic_db_status_public/tables/app_level_requirements/columns/priority/alterations/alt0000001057


ALTER TABLE "agentic_db_status_public".app_level_requirements 
  ALTER COLUMN priority DROP NOT NULL;


