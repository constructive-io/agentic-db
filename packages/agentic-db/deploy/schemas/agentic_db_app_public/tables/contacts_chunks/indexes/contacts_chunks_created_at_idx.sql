-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/indexes/contacts_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/columns/created_at/column


CREATE INDEX contacts_chunks_created_at_idx ON agentic_db_app_public.contacts_chunks ( created_at );

