-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_codebasis_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/codebasis_id/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


CREATE INDEX code_chunks_codebasis_id_idx ON agentic_db_app_public.code_chunks USING BTREE ( codebasis_id );

