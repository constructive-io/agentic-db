-- Deploy: schemas/agentic_db_app_public/tables/contact_companies/constraints/contact_companies_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_companies/table


ALTER TABLE "agentic_db_app_public".contact_companies 
  ADD CONSTRAINT contact_companies_pkey PRIMARY KEY (id);

