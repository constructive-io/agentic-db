-- Deploy: schemas/agentic_db_app_public/tables/contact_emails/indexes/contact_emails_email_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_emails/table
-- requires: schemas/agentic_db_app_public/tables/contact_emails/columns/email_type/column


CREATE INDEX contact_emails_email_type_idx ON "agentic_db_app_public".contact_emails USING BTREE ( email_type );

