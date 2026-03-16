-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".webhooks 
  DROP COLUMN entity_id RESTRICT;


