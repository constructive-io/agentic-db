-- Deploy: schemas/agentic_db_app_public/tables/files/indexes/files_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/embedding/column


CREATE INDEX files_entity_id_idx ON agentic_db_app_public.files USING BTREE ( entity_id );

