-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/constraints/org_grants_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants 
  ADD CONSTRAINT org_grants_pkey PRIMARY KEY (id);

