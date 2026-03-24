-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_runtime_states_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/runtime_states_id/column


CREATE INDEX runtime_states_chunks_runtime_states_id_idx ON agentic_db_app_public.runtime_states_chunks USING BTREE ( runtime_states_id );

