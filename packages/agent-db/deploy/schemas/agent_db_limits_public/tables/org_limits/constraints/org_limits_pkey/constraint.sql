-- Deploy: schemas/agent_db_limits_public/tables/org_limits/constraints/org_limits_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


ALTER TABLE "agent_db_limits_public".org_limits 
  ADD CONSTRAINT org_limits_pkey PRIMARY KEY (id);

