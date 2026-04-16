-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/embedding/column


CREATE INDEX contacts_embedding_hnsw_idx ON agentic_db_app_public.contacts USING hnsw ( embedding vector_cosine_ops );

