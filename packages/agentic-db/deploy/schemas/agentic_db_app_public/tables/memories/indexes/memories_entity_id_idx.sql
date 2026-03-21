-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_concept/column


CREATE INDEX memories_entity_id_idx ON "agentic_db_app_public".memories USING BTREE ( entity_id );

