-- Deploy: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_main_image_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/main_image_id/column


CREATE INDEX contacts_main_image_id_idx ON agentic_db_app_public.contacts USING BTREE ( main_image_id );

