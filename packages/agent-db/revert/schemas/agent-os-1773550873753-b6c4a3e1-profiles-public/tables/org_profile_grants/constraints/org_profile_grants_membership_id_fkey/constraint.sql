-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/constraints/org_profile_grants_membership_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants 
  DROP CONSTRAINT org_profile_grants_membership_id_fkey;


