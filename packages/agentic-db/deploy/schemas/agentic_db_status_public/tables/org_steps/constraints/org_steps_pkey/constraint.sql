-- Deploy: schemas/agentic_db_status_public/tables/org_steps/constraints/org_steps_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table


ALTER TABLE agentic_db_status_public.org_steps 
  ADD CONSTRAINT org_steps_pkey PRIMARY KEY (id);

