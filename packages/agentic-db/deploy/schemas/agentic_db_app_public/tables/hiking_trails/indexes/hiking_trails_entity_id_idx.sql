-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE INDEX hiking_trails_entity_id_idx ON agentic_db_app_public.hiking_trails USING BTREE ( entity_id );

