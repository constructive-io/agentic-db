-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_active_count_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/active_count/column
-- requires: schemas/agent_db_app_public/tables/notes/indexes/notes_last_accessed_at_idx


CREATE INDEX documents_active_count_idx ON agent_db_app_public.documents USING BTREE ( active_count );

