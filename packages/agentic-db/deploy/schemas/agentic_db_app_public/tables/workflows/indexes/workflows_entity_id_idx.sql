-- Deploy: schemas/agentic_db_app_public/tables/workflows/indexes/workflows_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/entity_id/column


CREATE INDEX workflows_entity_id_idx ON "agentic_db_app_public".workflows USING BTREE ( entity_id );

