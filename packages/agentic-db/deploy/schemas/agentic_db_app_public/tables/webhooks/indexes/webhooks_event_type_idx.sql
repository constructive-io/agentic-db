-- Deploy: schemas/agentic_db_app_public/tables/webhooks/indexes/webhooks_event_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/event_type/column
-- requires: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_status_idx


CREATE INDEX webhooks_event_type_idx ON "agentic_db_app_public".webhooks USING BTREE ( event_type );

