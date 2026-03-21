-- Deploy: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/projects/triggers/projects_search_tsv_tsv_update_tg


CREATE INDEX repositories_entity_id_idx ON agentic_db_app_public.repositories USING BTREE ( entity_id );

