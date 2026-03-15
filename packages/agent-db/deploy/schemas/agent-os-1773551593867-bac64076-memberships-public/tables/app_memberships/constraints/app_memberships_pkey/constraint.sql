-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/constraints/app_memberships_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_memberships 
  ADD CONSTRAINT app_memberships_pkey PRIMARY KEY (id);

