-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/is_system/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles 
  DROP COLUMN is_system RESTRICT;


