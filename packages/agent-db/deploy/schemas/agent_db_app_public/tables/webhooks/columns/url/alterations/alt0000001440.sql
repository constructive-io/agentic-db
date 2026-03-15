-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/url/alterations/alt0000001440
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/url/column
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/integration_id/column


ALTER TABLE agent_db_app_public.webhooks 
  ALTER COLUMN url SET NOT NULL;

