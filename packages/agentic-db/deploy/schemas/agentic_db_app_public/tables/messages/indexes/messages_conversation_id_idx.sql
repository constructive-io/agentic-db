-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_conversation_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/conversation_id/column


CREATE INDEX messages_conversation_id_idx ON agentic_db_app_public.messages USING BTREE ( conversation_id );

