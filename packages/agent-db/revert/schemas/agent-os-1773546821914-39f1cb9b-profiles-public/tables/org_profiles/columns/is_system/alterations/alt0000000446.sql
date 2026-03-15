-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/is_system/alterations/alt0000000446


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles 
  ALTER COLUMN is_system DROP NOT NULL;


