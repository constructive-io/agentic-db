-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/name/alterations/alt0000000438


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles 
  ALTER COLUMN name DROP NOT NULL;


