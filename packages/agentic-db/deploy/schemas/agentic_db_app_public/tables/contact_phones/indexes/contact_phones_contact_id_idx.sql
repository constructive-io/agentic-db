-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/indexes/contact_phones_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_phones/columns/contact_id/column


CREATE INDEX contact_phones_contact_id_idx ON agentic_db_app_public.contact_phones USING BTREE ( contact_id );

