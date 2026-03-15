-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/columns/is_grant/alterations/alt0000002015


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_owner_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


