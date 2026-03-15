-- Deploy: schemas/agent_db_app_public/tables/ideas/indexes/ideas_source_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/source/column
-- requires: schemas/agent_db_app_public/tables/ideas/indexes/ideas_status_idx


CREATE INDEX ideas_source_idx ON "agent_db_app_public".ideas USING BTREE ( source );

