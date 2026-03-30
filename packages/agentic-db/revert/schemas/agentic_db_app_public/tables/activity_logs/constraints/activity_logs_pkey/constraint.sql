-- Revert: schemas/agentic_db_app_public/tables/activity_logs/constraints/activity_logs_pkey/constraint


ALTER TABLE "agentic_db_app_public".activity_logs 
  DROP CONSTRAINT activity_logs_pkey;


