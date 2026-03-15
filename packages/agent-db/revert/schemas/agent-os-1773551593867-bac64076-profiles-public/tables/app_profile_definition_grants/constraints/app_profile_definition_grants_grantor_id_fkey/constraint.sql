-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/constraints/app_profile_definition_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_definition_grants 
  DROP CONSTRAINT app_profile_definition_grants_grantor_id_fkey;


