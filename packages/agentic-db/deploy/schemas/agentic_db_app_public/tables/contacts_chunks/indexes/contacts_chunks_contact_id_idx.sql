-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/indexes/contacts_chunks_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/columns/contact_id/column
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


CREATE INDEX contacts_chunks_contact_id_idx ON agentic_db_app_public.contacts_chunks USING BTREE ( contact_id );

