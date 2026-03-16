-- Revert: schemas/agentic_db_app_public/tables/activity_log/columns/updated_at/alterations/alt0000001265


ALTER TABLE "agentic_db_app_public".activity_log 
  ALTER COLUMN updated_at DROP NOT NULL;


