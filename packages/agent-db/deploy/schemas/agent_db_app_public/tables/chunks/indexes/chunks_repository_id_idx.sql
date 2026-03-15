-- Deploy: schemas/agent_db_app_public/tables/chunks/indexes/chunks_repository_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/indexes/chunks_file_id_idx
-- requires: schemas/agent_db_app_public/tables/chunks/columns/repository_id/column


CREATE INDEX chunks_repository_id_idx ON "agent_db_app_public".chunks USING BTREE ( repository_id );

