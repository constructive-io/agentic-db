-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/permissions/alterations/alt0000000443


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles 
  ALTER COLUMN permissions DROP NOT NULL;


