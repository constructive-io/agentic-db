-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/indexes/workflow_steps_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/entity_id/column


CREATE INDEX workflow_steps_entity_id_idx ON agentic_db_app_public.workflow_steps USING BTREE ( entity_id );

