-- Deploy: schemas/agentic_db_app_public/tables/ideas/indexes/ideas_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/triggers/documents_search_tsv_tsv_update_tg


CREATE INDEX ideas_entity_id_idx ON "agentic_db_app_public".ideas USING BTREE ( entity_id );

