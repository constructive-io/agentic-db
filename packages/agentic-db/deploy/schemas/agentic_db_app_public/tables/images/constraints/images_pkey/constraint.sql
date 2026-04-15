-- Deploy: schemas/agentic_db_app_public/tables/images/constraints/images_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.images 
  ADD CONSTRAINT images_pkey PRIMARY KEY (id);

