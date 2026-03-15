-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_embedding_text_bm25_idx


CREATE INDEX documents_embedding_text_bm25_idx ON agent_db_app_public.documents USING bm25 ( embedding_text ) WITH ( text_config = english );

