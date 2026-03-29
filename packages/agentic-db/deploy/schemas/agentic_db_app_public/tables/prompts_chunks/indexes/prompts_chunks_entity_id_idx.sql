-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/indexes/prompts_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE INDEX prompts_chunks_entity_id_idx ON agentic_db_app_public.prompts_chunks USING BTREE ( entity_id );

