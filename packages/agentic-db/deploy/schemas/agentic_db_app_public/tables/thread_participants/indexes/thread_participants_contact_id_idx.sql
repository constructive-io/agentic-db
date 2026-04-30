-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/indexes/thread_participants_contact_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/thread_participants/columns/contact_id/column


CREATE INDEX thread_participants_contact_id_idx ON agentic_db_app_public.thread_participants USING BTREE ( contact_id );

