-- Deploy: schemas/agentic_db_storage_public/tables/files/indexes/files_actor_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/actor_id/column


CREATE INDEX files_actor_id_idx ON agentic_db_storage_public.files USING BTREE ( actor_id );

