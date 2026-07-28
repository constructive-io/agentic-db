-- Deploy: schemas/agentic_db_app_public/tables/raw_message_attachments/indexes/raw_message_attachments_raw_message_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_message_attachments/table
-- requires: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/raw_message_id/column


CREATE INDEX raw_message_attachments_raw_message_id_idx ON agentic_db_app_public.raw_message_attachments USING BTREE ( raw_message_id );

