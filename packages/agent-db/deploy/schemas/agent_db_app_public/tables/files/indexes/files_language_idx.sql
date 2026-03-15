-- Deploy: schemas/agent_db_app_public/tables/files/indexes/files_language_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/indexes/files_path_idx
-- requires: schemas/agent_db_app_public/tables/files/columns/language/column


CREATE INDEX files_language_idx ON "agent_db_app_public".files USING BTREE ( language );

