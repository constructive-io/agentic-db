-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/content/column
-- requires: schemas/agent_db_app_public/tables/messages/indexes/messages_body_text_bm25_idx


CREATE INDEX documents_content_bm25_idx ON "agent_db_app_public".documents USING bm25 ( content ) WITH ( text_config = english );

