-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/description/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles 
  DROP COLUMN description RESTRICT;


