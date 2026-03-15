-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profiles/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profiles 
  DROP COLUMN updated_at RESTRICT;


