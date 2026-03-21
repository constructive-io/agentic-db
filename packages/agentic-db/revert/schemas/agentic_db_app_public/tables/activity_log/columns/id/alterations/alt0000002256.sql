-- Revert: schemas/agentic_db_app_public/tables/activity_log/columns/id/alterations/alt0000002256


ALTER TABLE "agentic_db_app_public".activity_log 
  ALTER COLUMN id DROP NOT NULL;


