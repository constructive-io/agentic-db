-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_grants/constraints/app_profile_grants_membership_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_grants 
  DROP CONSTRAINT app_profile_grants_membership_id_fkey;


