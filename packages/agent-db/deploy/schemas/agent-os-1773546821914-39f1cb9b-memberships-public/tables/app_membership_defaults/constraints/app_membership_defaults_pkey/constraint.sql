-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/constraints/app_membership_defaults_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_membership_defaults/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_membership_defaults 
  ADD CONSTRAINT app_membership_defaults_pkey PRIMARY KEY (id);

