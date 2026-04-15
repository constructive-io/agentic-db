-- Deploy: schemas/agentic_db_app_public/tables/deal_companies/constraints/deal_companies_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_companies/table


ALTER TABLE "agentic_db_app_public".deal_companies 
  ADD CONSTRAINT deal_companies_pkey PRIMARY KEY (id);

