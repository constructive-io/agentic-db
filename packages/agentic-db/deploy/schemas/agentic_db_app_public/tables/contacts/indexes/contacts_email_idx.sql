-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_email_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/email/column
-- requires: schemas/agentic_db_app_public/tables/interactions/indexes/interactions_tags_gin_idx


CREATE INDEX contacts_email_idx ON agentic_db_app_public.contacts USING BTREE ( email );

