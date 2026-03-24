-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/embedding_text/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX contacts_embedding_text_bm25_idx ON "agentic_db_app_public".contacts USING bm25 ( embedding_text ) WITH ( text_config = english );

