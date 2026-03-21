-- Deploy: schemas/agentic_db_app_public/tables/session_chunks/columns/session_id/alterations/alt0000004349
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_chunks/columns/session_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_agent_id_idx


ALTER TABLE agentic_db_app_public.session_chunks 
  ALTER COLUMN session_id SET NOT NULL;

