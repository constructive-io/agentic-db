-- Deploy: schemas/agentic_db_app_public/tables/contact_memories/indexes/contact_memories_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_memories/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/contact_memories/columns/contact_id/column


CREATE INDEX contact_memories_contact_id_idx ON agentic_db_app_public.contact_memories USING BTREE ( contact_id );

