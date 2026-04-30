-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


CREATE INDEX memories_agent_id_idx ON agentic_db_app_public.memories USING BTREE ( agent_id );

