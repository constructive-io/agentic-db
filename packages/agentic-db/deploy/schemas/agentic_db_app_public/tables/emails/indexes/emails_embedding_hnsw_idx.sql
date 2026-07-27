-- Deploy: schemas/agentic_db_app_public/tables/emails/indexes/emails_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/embedding/column


CREATE INDEX emails_embedding_hnsw_idx ON agentic_db_app_public.emails USING hnsw ( embedding vector_cosine_ops );

