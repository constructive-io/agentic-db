-- Deploy: schemas/agentic_db_status_public/tables/app_steps/constraints/app_steps_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_steps/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_status_public.app_steps 
  ADD CONSTRAINT app_steps_pkey PRIMARY KEY (id);

