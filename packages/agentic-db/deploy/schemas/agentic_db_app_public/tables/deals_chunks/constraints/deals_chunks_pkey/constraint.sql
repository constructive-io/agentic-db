-- Deploy: schemas/agentic_db_app_public/tables/deals_chunks/constraints/deals_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals_chunks/table


ALTER TABLE "agentic_db_app_public".deals_chunks 
  ADD CONSTRAINT deals_chunks_pkey PRIMARY KEY (id);

