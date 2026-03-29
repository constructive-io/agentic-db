-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.agent_logs 
  ADD COLUMN entity_id uuid;

