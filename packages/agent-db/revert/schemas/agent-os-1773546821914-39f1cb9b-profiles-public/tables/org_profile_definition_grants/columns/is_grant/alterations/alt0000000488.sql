-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_definition_grants/columns/is_grant/alterations/alt0000000488


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_definition_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


