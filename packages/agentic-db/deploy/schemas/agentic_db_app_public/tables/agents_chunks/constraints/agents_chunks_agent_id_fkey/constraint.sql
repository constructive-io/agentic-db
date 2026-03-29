-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/constraints/agents_chunks_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.agents_chunks 
  ADD CONSTRAINT agents_chunks_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES agentic_db_app_public.agents (id) 
    ON DELETE CASCADE;

