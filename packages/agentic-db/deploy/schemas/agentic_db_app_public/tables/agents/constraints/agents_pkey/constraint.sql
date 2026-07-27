-- Deploy: schemas/agentic_db_app_public/tables/agents/constraints/agents_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table


ALTER TABLE agentic_db_app_public.agents 
  ADD CONSTRAINT agents_pkey PRIMARY KEY (id);

