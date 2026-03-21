-- Revert: schemas/agentic_db_app_public/tables/activity_log/constraints/activity_logs_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".activity_log 
  DROP CONSTRAINT activity_logs_entity_id_fkey;


