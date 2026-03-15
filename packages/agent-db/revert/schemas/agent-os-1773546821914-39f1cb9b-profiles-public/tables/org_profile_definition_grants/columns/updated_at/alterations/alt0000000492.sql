-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_definition_grants/columns/updated_at/alterations/alt0000000492


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_definition_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


