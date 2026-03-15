-- Deploy: schemas/agent_db_app_public/tables/webhooks/indexes/webhooks_integration_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/integration_id/column
-- requires: schemas/agent_db_app_public/tables/integrations/indexes/integrations_status_idx


CREATE INDEX webhooks_integration_id_idx ON "agent_db_app_public".webhooks USING BTREE ( integration_id );

