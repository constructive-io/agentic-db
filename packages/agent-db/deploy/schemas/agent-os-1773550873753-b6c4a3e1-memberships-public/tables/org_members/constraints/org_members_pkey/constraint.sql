-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/constraints/org_members_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_members 
  ADD CONSTRAINT org_members_pkey PRIMARY KEY (id);

