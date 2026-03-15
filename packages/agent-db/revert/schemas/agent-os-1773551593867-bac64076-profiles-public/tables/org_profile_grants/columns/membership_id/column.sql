-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/columns/membership_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_grants 
  DROP COLUMN membership_id RESTRICT;


