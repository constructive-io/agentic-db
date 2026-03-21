-- Deploy: schemas/agentic_db_app_public/tables/processes/indexes/processes_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/embedding/column


CREATE INDEX processes_entity_id_idx ON "agentic_db_app_public".processes USING BTREE ( entity_id );

