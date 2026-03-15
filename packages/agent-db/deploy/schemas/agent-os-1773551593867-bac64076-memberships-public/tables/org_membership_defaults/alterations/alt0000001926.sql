-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/alterations/alt0000001926
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults 
  DISABLE ROW LEVEL SECURITY;

