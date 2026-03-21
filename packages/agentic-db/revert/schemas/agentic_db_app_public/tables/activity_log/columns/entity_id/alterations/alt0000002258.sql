-- Revert: schemas/agentic_db_app_public/tables/activity_log/columns/entity_id/alterations/alt0000002258


ALTER TABLE "agentic_db_app_public".activity_log 
  ALTER COLUMN entity_id DROP NOT NULL;


