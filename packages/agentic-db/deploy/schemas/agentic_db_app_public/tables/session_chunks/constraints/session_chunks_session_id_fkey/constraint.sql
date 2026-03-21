-- Deploy: schemas/agentic_db_app_public/tables/session_chunks/constraints/session_chunks_session_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/session_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_agent_id_idx


ALTER TABLE agentic_db_app_public.session_chunks 
  ADD CONSTRAINT session_chunks_session_id_fkey 
    FOREIGN KEY(session_id) 
    REFERENCES agentic_db_app_public.sessions (id) 
    ON DELETE CASCADE;

