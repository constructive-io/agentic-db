-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/constraints/org_level_requirements_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ADD CONSTRAINT org_level_requirements_pkey PRIMARY KEY (id);

