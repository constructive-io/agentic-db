-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/name/alterations/alt0000002047


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  ALTER COLUMN name DROP NOT NULL;


