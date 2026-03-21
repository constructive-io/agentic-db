-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/constraints/project_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/milestones/columns/status/alterations/alt0000002390


ALTER TABLE "agentic_db_app_public".project_chunks 
  ADD CONSTRAINT project_chunks_pkey PRIMARY KEY (id);

