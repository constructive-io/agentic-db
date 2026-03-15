-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants 
  DROP COLUMN updated_at RESTRICT;


