-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/is_active/column


ALTER TABLE "agentic_db_app_public".webhooks 
  DROP COLUMN is_active RESTRICT;


