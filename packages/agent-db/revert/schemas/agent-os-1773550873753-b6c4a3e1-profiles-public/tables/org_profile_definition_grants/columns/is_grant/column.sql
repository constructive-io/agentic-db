-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_definition_grants 
  DROP COLUMN is_grant RESTRICT;


