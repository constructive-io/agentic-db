-- Deploy: schemas/agentic_db_status_public/tables/org_levels/constraints/org_levels_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_levels/table


ALTER TABLE "agentic_db_status_public".org_levels 
  ADD CONSTRAINT org_levels_pkey PRIMARY KEY (id);

