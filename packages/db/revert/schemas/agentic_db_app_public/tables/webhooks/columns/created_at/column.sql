-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".webhooks 
  DROP COLUMN created_at RESTRICT;


