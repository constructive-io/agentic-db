-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/constraints/org_achievements_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table


ALTER TABLE "agentic_db_status_public".org_achievements 
  ADD CONSTRAINT org_achievements_pkey PRIMARY KEY (id);

