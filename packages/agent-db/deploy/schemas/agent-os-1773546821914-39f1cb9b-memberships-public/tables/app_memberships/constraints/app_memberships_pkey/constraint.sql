-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/constraints/app_memberships_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_memberships/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_memberships 
  ADD CONSTRAINT app_memberships_pkey PRIMARY KEY (id);

