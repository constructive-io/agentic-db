-- Deploy: schemas/agent_db_status_public/tables/org_levels/constraints/org_levels_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table


ALTER TABLE "agent_db_status_public".org_levels 
  ADD CONSTRAINT org_levels_pkey PRIMARY KEY (id);

