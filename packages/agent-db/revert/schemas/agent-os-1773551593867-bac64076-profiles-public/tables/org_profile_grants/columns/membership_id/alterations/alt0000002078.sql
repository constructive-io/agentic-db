-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/columns/membership_id/alterations/alt0000002078


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


