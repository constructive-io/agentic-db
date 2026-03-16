-- Deploy: schemas/agent_db_app_public/tables/webhooks/indexes/webhooks_event_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/event_type/column
-- requires: schemas/agent_db_app_public/tables/webhooks/indexes/webhooks_integration_id_idx


CREATE INDEX webhooks_event_type_idx ON "agent_db_app_public".webhooks USING BTREE ( event_type );

