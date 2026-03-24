-- Deploy: schemas/agentic_db_app_public/tables/notes/indexes/notes_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/content/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX notes_content_bm25_idx ON "agentic_db_app_public".notes USING bm25 ( content ) WITH ( text_config = english );

