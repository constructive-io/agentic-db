-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/slug/alterations/alt0000000440


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles 
  ALTER COLUMN slug DROP NOT NULL;


