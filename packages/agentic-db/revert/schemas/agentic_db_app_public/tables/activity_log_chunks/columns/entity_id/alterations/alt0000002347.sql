-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/entity_id/alterations/alt0000002347


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


