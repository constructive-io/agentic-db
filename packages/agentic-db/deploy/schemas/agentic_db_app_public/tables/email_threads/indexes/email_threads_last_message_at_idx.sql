-- Deploy: schemas/agentic_db_app_public/tables/email_threads/indexes/email_threads_last_message_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_threads/table
-- requires: schemas/agentic_db_app_public/tables/email_threads/columns/last_message_at/column


CREATE INDEX email_threads_last_message_at_idx ON agentic_db_app_public.email_threads USING BTREE ( last_message_at );

