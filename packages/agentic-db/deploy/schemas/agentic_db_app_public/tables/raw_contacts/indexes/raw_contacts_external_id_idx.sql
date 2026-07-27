-- Deploy: schemas/agentic_db_app_public/tables/raw_contacts/indexes/raw_contacts_external_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/table
-- requires: schemas/agentic_db_app_public/tables/raw_contacts/columns/external_id/column


CREATE INDEX raw_contacts_external_id_idx ON agentic_db_app_public.raw_contacts USING BTREE ( external_id );

