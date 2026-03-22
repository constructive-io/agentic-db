-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/embedding_text/column


CREATE INDEX codebas_chunks_embedding_text_bm25_idx ON "agentic_db_app_public".codebas_chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

