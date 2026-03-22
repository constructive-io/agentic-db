-- Deploy: schemas/agentic_db_app_public/tables/interaction_chunks/indexes/interaction_chunks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy
-- requires: schemas/agentic_db_app_public/tables/interaction_chunks/columns/embedding_text/column


CREATE INDEX interaction_chunks_embedding_text_bm25_idx ON "agentic_db_app_public".interaction_chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

