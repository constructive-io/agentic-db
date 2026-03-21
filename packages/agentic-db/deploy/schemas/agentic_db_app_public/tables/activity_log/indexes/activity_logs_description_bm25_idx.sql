-- Deploy: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_description_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/description/column
-- requires: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_content_bm25_idx


CREATE INDEX activity_logs_description_bm25_idx ON agentic_db_app_public.activity_log USING bm25 ( description ) WITH ( text_config = english );

