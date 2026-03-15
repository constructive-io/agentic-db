-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_owner_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".app_owner_grants 
  ENABLE ROW LEVEL SECURITY;

