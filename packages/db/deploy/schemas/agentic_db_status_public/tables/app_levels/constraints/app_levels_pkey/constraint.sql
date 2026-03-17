-- Deploy: schemas/agentic_db_status_public/tables/app_levels/constraints/app_levels_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table


ALTER TABLE "agentic_db_status_public".app_levels 
  ADD CONSTRAINT app_levels_pkey PRIMARY KEY (id);

