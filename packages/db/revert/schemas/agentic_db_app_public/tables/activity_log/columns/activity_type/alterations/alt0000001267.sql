-- Revert: schemas/agentic_db_app_public/tables/activity_log/columns/activity_type/alterations/alt0000001267


ALTER TABLE "agentic_db_app_public".activity_log 
  ALTER COLUMN activity_type DROP NOT NULL;


