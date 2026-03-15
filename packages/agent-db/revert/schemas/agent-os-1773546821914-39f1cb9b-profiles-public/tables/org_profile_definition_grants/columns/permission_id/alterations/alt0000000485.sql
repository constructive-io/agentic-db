-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_definition_grants/columns/permission_id/alterations/alt0000000485


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_definition_grants 
  ALTER COLUMN permission_id DROP NOT NULL;


