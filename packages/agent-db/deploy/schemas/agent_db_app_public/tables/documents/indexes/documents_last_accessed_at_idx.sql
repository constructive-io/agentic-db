-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_last_accessed_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/last_accessed_at/column
-- requires: schemas/agent_db_app_public/tables/documents/indexes/documents_active_count_idx


CREATE INDEX documents_last_accessed_at_idx ON "agent_db_app_public".documents USING BTREE ( last_accessed_at );

