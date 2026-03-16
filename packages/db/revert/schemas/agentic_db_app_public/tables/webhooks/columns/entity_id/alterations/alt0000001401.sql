-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/entity_id/alterations/alt0000001401


ALTER TABLE "agentic_db_app_public".webhooks 
  ALTER COLUMN entity_id DROP NOT NULL;


