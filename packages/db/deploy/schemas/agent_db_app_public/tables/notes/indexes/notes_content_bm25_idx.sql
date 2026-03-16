-- Deploy: schemas/agent_db_app_public/tables/notes/indexes/notes_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/content/column
-- requires: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_embedding_text_bm25_idx


CREATE INDEX notes_content_bm25_idx ON "agent_db_app_public".notes USING bm25 ( content ) WITH ( text_config = english );

