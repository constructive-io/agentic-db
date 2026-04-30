-- Deploy: schemas/agentic_db_app_public/tables/expense_contacts/indexes/expense_contacts_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/columns/contact_id/column


CREATE INDEX expense_contacts_contact_id_idx ON agentic_db_app_public.expense_contacts USING BTREE ( contact_id );

