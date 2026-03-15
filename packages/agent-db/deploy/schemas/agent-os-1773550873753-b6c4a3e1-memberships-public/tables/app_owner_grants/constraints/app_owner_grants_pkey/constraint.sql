-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/constraints/app_owner_grants_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_owner_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_owner_grants 
  ADD CONSTRAINT app_owner_grants_pkey PRIMARY KEY (id);

