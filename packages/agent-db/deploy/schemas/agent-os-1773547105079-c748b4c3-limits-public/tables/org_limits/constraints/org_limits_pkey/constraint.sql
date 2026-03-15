-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/constraints/org_limits_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
  ADD CONSTRAINT org_limits_pkey PRIMARY KEY (id);

