-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/constraints/org_limits_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".org_limits 
  ADD CONSTRAINT org_limits_pkey PRIMARY KEY (id);

