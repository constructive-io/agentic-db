-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/constraints/agent_tasks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".agent_tasks 
  ADD CONSTRAINT agent_tasks_pkey PRIMARY KEY (id);

