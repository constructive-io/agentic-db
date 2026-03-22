-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/columns/event_id/alterations/alt0000001137
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/event_id/column
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/indexes/deal_chunks_deal_id_idx


ALTER TABLE "agentic_db_app_public".event_chunks 
  ALTER COLUMN event_id SET NOT NULL;

