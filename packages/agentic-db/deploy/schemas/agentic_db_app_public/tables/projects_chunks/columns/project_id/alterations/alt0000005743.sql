-- Deploy: schemas/agentic_db_app_public/tables/projects_chunks/columns/project_id/alterations/alt0000005743
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/columns/project_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.projects_chunks 
  ALTER COLUMN project_id SET NOT NULL;

