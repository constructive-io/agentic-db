-- Deploy: schemas/agentic_db_app_public/tables/deals/indexes/deals_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/tables/deals/columns/embedding/column
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE INDEX deals_embedding_hnsw_idx ON agentic_db_app_public.deals USING hnsw ( embedding vector_cosine_ops );

