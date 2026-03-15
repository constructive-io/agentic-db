-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/membership_types/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/membership_types/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".membership_types 
  ENABLE ROW LEVEL SECURITY;

