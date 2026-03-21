-- Deploy: schemas/agentic_db_app_public/tables/session_chunks/columns/session_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_agent_id_idx


ALTER TABLE agentic_db_app_public.session_chunks 
  ADD COLUMN session_id uuid;

