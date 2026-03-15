-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/constraints/org_limits_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limits 
  ADD CONSTRAINT org_limits_pkey PRIMARY KEY (id);

