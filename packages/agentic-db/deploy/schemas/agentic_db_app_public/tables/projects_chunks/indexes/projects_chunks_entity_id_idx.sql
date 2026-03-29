-- Deploy: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_chunk_index_idx


CREATE INDEX projects_chunks_entity_id_idx ON agentic_db_app_public.projects_chunks USING BTREE ( entity_id );

