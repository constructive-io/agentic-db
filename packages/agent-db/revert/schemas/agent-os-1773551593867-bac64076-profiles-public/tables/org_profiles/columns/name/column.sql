-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  DROP COLUMN name RESTRICT;


