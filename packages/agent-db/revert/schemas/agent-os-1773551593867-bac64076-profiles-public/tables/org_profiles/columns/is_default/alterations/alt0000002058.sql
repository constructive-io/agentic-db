-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/is_default/alterations/alt0000002058


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  ALTER COLUMN is_default DROP NOT NULL;


