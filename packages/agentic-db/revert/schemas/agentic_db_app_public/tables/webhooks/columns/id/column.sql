-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/id/column


ALTER TABLE "agentic_db_app_public".webhooks 
  DROP COLUMN id RESTRICT;


