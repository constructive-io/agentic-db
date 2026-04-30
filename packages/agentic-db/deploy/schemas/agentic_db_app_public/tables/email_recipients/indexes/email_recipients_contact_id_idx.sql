-- Deploy: schemas/agentic_db_app_public/tables/email_recipients/indexes/email_recipients_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_recipients/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/email_recipients/columns/contact_id/column


CREATE INDEX email_recipients_contact_id_idx ON agentic_db_app_public.email_recipients USING BTREE ( contact_id );

