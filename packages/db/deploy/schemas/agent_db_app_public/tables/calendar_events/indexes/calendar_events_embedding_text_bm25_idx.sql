-- Deploy: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/messages/indexes/messages_embedding_text_bm25_idx


CREATE INDEX calendar_events_embedding_text_bm25_idx ON "agent_db_app_public".calendar_events USING bm25 ( embedding_text ) WITH ( text_config = english );

