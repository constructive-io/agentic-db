-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/indexes/project_contacts_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/indexes/autonomy_records_chunks_chunk_index_idx


CREATE INDEX project_contacts_contact_id_idx ON agentic_db_app_public.project_contacts USING BTREE ( contact_id );

