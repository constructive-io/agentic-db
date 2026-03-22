-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_role_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/role/column
-- requires: schemas/agentic_db_app_public/tables/conversations/indexes/conversations_status_idx


CREATE INDEX messages_role_idx ON agentic_db_app_public.messages USING BTREE ( role );

