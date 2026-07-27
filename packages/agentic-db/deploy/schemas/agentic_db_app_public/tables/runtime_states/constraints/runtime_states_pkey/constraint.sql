-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/constraints/runtime_states_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table


ALTER TABLE agentic_db_app_public.runtime_states 
  ADD CONSTRAINT runtime_states_pkey PRIMARY KEY (id);

