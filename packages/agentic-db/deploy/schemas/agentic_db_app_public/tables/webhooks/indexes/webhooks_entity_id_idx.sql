-- Deploy: schemas/agentic_db_app_public/tables/webhooks/indexes/webhooks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/last_synced_at/column


CREATE INDEX webhooks_entity_id_idx ON agentic_db_app_public.webhooks USING BTREE ( entity_id );

