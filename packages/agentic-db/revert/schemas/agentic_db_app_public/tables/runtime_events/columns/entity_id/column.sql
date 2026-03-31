-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".runtime_events 
  DROP COLUMN entity_id RESTRICT;


