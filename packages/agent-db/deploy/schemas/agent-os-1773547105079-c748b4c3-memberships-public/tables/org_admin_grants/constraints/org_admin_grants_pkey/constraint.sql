-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/constraints/org_admin_grants_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_admin_grants 
  ADD CONSTRAINT org_admin_grants_pkey PRIMARY KEY (id);

