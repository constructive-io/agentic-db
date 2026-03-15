-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_definition_grants 
  DROP COLUMN is_grant RESTRICT;


