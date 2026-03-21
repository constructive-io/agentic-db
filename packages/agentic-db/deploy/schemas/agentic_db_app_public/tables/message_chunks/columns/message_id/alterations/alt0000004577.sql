-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/columns/message_id/alterations/alt0000004577
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/message_id/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/indexes/webhooks_integration_id_idx


ALTER TABLE agentic_db_app_public.message_chunks 
  ALTER COLUMN message_id SET NOT NULL;

