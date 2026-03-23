-- Deploy: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX interactions_embedding_hnsw_idx ON "agentic_db_app_public".interactions USING hnsw ( embedding vector_cosine_ops );

