-- Deploy: schemas/agent_db_app_public/tables/files/indexes/files_path_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/path/column
-- requires: schemas/agent_db_app_public/tables/files/indexes/files_repository_id_idx


CREATE INDEX files_path_idx ON "agent_db_app_public".files USING BTREE ( path );

