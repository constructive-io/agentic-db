-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/columns/is_grant/alterations/alt0000002083


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


