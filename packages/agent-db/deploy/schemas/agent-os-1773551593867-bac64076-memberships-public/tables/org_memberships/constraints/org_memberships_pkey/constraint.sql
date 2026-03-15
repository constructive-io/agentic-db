-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/constraints/org_memberships_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_memberships/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_memberships 
  ADD CONSTRAINT org_memberships_pkey PRIMARY KEY (id);

