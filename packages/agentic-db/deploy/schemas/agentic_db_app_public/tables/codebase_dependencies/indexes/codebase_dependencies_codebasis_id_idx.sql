-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/indexes/codebase_dependencies_codebasis_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/columns/codebasis_id/column
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


CREATE INDEX codebase_dependencies_codebasis_id_idx ON agentic_db_app_public.codebase_dependencies USING BTREE ( codebasis_id );

