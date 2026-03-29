-- Deploy: schemas/agentic_db_app_public/tables/runtime_schedules/constraints/runtime_schedules_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_schedules/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.runtime_schedules 
  ADD CONSTRAINT runtime_schedules_pkey PRIMARY KEY (id);

