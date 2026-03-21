-- Deploy: schemas/agentic_db_app_public/tables/blueprints/indexes/blueprints_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/entity_id/column


CREATE INDEX blueprints_entity_id_idx ON agentic_db_app_public.blueprints USING BTREE ( entity_id );

