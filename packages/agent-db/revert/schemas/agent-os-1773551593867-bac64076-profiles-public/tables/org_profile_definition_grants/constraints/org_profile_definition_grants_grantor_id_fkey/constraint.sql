-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/constraints/org_profile_definition_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_definition_grants 
  DROP CONSTRAINT org_profile_definition_grants_grantor_id_fkey;


