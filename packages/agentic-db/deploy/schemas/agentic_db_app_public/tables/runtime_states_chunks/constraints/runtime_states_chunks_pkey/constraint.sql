-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/constraints/runtime_states_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.runtime_states_chunks 
  ADD CONSTRAINT runtime_states_chunks_pkey PRIMARY KEY (id);

