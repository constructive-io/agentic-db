-- Deploy: schemas/agentic_db_app_public/tables/touchpoints/constraints/touchpoints_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/touchpoints/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.touchpoints 
  ADD CONSTRAINT touchpoints_pkey PRIMARY KEY (id);

