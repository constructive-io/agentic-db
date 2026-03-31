-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/constraints/agent_logs_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".agent_logs 
  ADD CONSTRAINT agent_logs_pkey PRIMARY KEY (id);

