-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/is_system/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  DROP COLUMN is_system RESTRICT;


