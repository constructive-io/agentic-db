-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/constraints/event_chunks_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/indexes/deal_chunks_deal_id_idx


ALTER TABLE agentic_db_app_public.event_chunks 
  ADD CONSTRAINT event_chunks_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES agentic_db_app_public.events (id) 
    ON DELETE CASCADE;

