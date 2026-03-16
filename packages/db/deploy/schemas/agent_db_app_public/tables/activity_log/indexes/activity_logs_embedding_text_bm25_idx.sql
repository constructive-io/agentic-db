-- Deploy: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/session_archives/indexes/session_archives_embedding_text_bm25_idx


CREATE INDEX activity_logs_embedding_text_bm25_idx ON "agent_db_app_public".activity_log USING bm25 ( embedding_text ) WITH ( text_config = english );

