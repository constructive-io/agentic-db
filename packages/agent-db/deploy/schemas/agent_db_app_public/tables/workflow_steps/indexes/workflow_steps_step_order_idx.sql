-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/indexes/workflow_steps_step_order_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/step_order/column
-- requires: schemas/agent_db_app_public/tables/workflow_steps/indexes/workflow_steps_workflow_id_idx


CREATE INDEX workflow_steps_step_order_idx ON "agent_db_app_public".workflow_steps USING BTREE ( step_order );

