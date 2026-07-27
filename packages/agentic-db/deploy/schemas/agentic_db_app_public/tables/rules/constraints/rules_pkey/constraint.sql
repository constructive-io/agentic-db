-- Deploy: schemas/agentic_db_app_public/tables/rules/constraints/rules_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table


ALTER TABLE agentic_db_app_public.rules 
  ADD CONSTRAINT rules_pkey PRIMARY KEY (id);

