-- Deploy: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg


CREATE INDEX tasks_entity_id_idx ON agentic_db_app_public.tasks USING BTREE ( entity_id );

