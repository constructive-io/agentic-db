-- Deploy: schemas/agentic_db_app_public/tables/projects/indexes/projects_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/project_chunks/indexes/project_chunks_project_id_idx


CREATE INDEX projects_embedding_hnsw_idx ON agentic_db_app_public.projects USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

