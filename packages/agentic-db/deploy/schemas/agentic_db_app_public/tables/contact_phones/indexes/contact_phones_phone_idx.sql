-- Deploy: schemas/agentic_db_app_public/tables/contact_phones/indexes/contact_phones_phone_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_phones/table
-- requires: schemas/agentic_db_app_public/tables/contact_phones/columns/phone/column


CREATE INDEX contact_phones_phone_idx ON agentic_db_app_public.contact_phones USING BTREE ( phone );

