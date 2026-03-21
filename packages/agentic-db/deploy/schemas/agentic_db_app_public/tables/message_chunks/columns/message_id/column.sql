-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/columns/message_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/indexes/webhooks_integration_id_idx


ALTER TABLE agentic_db_app_public.message_chunks 
  ADD COLUMN message_id uuid;

