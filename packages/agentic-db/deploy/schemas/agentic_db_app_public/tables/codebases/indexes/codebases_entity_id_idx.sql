-- Deploy: schemas/agentic_db_app_public/tables/codebases/indexes/codebases_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


CREATE INDEX codebases_entity_id_idx ON agentic_db_app_public.codebases USING BTREE ( entity_id );

