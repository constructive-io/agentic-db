-- Deploy: schemas/agent_db_app_public/tables/companies/indexes/companies_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/contacts/indexes/contacts_embedding_hnsw_idx


CREATE INDEX companies_embedding_hnsw_idx ON agent_db_app_public.companies USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

