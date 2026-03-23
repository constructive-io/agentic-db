-- Deploy: schemas/agentic_db_app_public/tables/companies/indexes/companies_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/companies/columns/embedding/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX companies_embedding_hnsw_idx ON "agentic_db_app_public".companies USING hnsw ( embedding vector_cosine_ops );

