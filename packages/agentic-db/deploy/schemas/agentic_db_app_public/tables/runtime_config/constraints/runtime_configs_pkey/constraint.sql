-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/constraints/runtime_configs_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table


ALTER TABLE agentic_db_app_public.runtime_config 
  ADD CONSTRAINT runtime_configs_pkey PRIMARY KEY (id);

