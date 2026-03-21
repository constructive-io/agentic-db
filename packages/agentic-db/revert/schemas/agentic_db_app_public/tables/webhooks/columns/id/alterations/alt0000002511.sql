-- Revert: schemas/agentic_db_app_public/tables/webhooks/columns/id/alterations/alt0000002511


ALTER TABLE "agentic_db_app_public".webhooks 
  ALTER COLUMN id DROP NOT NULL;


