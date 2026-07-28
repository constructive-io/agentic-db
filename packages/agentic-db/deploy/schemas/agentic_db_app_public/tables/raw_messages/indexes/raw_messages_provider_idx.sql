-- Deploy: schemas/agentic_db_app_public/tables/raw_messages/indexes/raw_messages_provider_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_messages/table
-- requires: schemas/agentic_db_app_public/tables/raw_messages/columns/provider/column


CREATE INDEX raw_messages_provider_idx ON agentic_db_app_public.raw_messages USING BTREE ( provider );

