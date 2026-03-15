-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/slug/alterations/alt0000002049


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  ALTER COLUMN slug DROP NOT NULL;


