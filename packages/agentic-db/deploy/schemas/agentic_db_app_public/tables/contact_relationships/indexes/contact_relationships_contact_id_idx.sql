-- Deploy: schemas/agentic_db_app_public/tables/contact_relationships/indexes/contact_relationships_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_relationships/columns/contact_id/column


CREATE INDEX contact_relationships_contact_id_idx ON agentic_db_app_public.contact_relationships USING BTREE ( contact_id );

