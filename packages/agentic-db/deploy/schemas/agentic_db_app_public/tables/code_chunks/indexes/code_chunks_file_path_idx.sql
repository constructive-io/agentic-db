-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_file_path_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/file_path/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_codebase_id_idx


CREATE INDEX code_chunks_file_path_idx ON agentic_db_app_public.code_chunks USING BTREE ( file_path );

