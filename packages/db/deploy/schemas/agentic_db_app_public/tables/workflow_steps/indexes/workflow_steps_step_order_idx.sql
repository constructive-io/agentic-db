-- Deploy: schemas/agentic_db_app_public/tables/workflow_steps/indexes/workflow_steps_step_order_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/table
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/columns/step_order/column
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/indexes/workflow_steps_workflow_id_idx


CREATE INDEX workflow_steps_step_order_idx ON "agentic_db_app_public".workflow_steps USING BTREE ( step_order );

