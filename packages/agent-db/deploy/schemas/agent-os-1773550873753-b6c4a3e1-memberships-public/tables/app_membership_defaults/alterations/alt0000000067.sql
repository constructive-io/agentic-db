-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/alterations/alt0000000067
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_membership_defaults/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_membership_defaults 
  DISABLE ROW LEVEL SECURITY;

