-- Deploy: schemas/agentic_db_app_public/tables/raw_contact_emails/indexes/raw_contact_emails_email_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_emails/columns/email/column


CREATE INDEX raw_contact_emails_email_idx ON agentic_db_app_public.raw_contact_emails USING BTREE ( email );

