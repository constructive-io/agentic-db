-- Deploy: schemas/agent_db_app_public/tables/chunks/indexes/chunks_file_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/file_id/column
-- requires: schemas/agent_db_app_public/tables/files/indexes/files_language_idx


CREATE INDEX chunks_file_id_idx ON agent_db_app_public.chunks USING BTREE ( file_id );

