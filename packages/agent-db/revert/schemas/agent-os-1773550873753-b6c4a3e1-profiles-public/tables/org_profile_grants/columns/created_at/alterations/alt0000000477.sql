-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/created_at/alterations/alt0000000477


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants 
  ALTER COLUMN created_at DROP DEFAULT;


