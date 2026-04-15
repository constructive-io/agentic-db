-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/indexes/email_recipients_email_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/email_recipients/columns/email_id/column
-- requires: schemas/agentic_db_app_public/tables/thread_participants/indexes/thread_participants_contact_id_idx


CREATE INDEX email_recipients_email_id_idx ON agentic_db_app_public.email_recipients USING BTREE ( email_id );

