-- Revert: schemas/agent_db_app_public/tables/webhooks/columns/id/alterations/alt0000004603


ALTER TABLE "agent_db_app_public".webhooks 
  ALTER COLUMN id DROP NOT NULL;


