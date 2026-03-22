-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/columns/event_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/indexes/deal_chunks_deal_id_idx


ALTER TABLE agentic_db_app_public.event_chunks 
  ADD COLUMN event_id uuid;

