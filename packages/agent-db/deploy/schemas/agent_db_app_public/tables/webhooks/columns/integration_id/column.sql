-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/integration_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/updated_at/alterations/alt0000004609


ALTER TABLE "agent_db_app_public".webhooks 
  ADD COLUMN integration_id uuid;

