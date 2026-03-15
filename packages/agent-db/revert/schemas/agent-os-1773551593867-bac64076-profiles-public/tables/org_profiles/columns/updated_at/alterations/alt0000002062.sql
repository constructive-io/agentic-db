-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/updated_at/alterations/alt0000002062


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;


