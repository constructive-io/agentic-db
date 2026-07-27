-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/constraints/runtime_artifacts_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  ADD CONSTRAINT runtime_artifacts_pkey PRIMARY KEY (id);

