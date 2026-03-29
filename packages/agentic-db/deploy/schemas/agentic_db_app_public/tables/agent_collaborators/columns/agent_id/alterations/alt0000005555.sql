-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/columns/agent_id/alterations/alt0000005555
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.agent_collaborators 
  ALTER COLUMN agent_id SET NOT NULL;

