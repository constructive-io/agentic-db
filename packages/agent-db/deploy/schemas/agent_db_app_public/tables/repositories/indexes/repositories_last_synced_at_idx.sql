-- Deploy: schemas/agent_db_app_public/tables/repositories/indexes/repositories_last_synced_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/documents/indexes/documents_is_read_idx
-- requires: schemas/agent_db_app_public/tables/repositories/columns/last_synced_at/column


CREATE INDEX repositories_last_synced_at_idx ON "agent_db_app_public".repositories USING BTREE ( last_synced_at );

