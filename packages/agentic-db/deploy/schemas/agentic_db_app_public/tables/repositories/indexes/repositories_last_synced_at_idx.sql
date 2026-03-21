-- Deploy: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_last_synced_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/last_synced_at/column
-- requires: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_name_gin_idx


CREATE INDEX repositories_last_synced_at_idx ON agentic_db_app_public.repositories USING BTREE ( last_synced_at );

