-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_relationship_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_email_idx
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/relationship_type/column


CREATE INDEX contacts_relationship_type_idx ON agentic_db_app_public.contacts USING BTREE ( relationship_type );

