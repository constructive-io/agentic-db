-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/membership_id/alterations/alt0000000469


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


