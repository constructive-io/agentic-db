-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/slug/alterations/alt0000000440


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles 
  ALTER COLUMN slug DROP NOT NULL;


