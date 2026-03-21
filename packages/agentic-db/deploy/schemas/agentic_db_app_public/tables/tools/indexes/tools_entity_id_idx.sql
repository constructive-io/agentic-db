-- Deploy: schemas/agentic_db_app_public/tables/tools/indexes/tools_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tools/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/scheduled_jobs/columns/last_result/column


CREATE INDEX tools_entity_id_idx ON "agentic_db_app_public".tools USING BTREE ( entity_id );

