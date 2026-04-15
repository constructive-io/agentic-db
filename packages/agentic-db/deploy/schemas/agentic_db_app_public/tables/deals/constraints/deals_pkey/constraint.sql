-- Deploy: schemas/agentic_db_app_public/tables/deals/constraints/deals_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table


ALTER TABLE "agentic_db_app_public".deals 
  ADD CONSTRAINT deals_pkey PRIMARY KEY (id);

