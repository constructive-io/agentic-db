-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/constraints/activity_logs_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".activity_logs_chunks 
  DROP CONSTRAINT activity_logs_chunks_pkey;


