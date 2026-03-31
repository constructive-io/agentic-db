-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/constraints/agent_collaborators_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE "agentic_db_app_public".agent_collaborators 
  ADD CONSTRAINT agent_collaborators_pkey PRIMARY KEY (id);

