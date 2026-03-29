-- Deploy: schemas/agentic_db_app_public/tables/codebase_dependencies/alterations/alt0000005782
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebase_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_chunk_index_idx


COMMENT ON TABLE agentic_db_app_public.codebase_dependencies IS E'@behavior +manyToMany';

