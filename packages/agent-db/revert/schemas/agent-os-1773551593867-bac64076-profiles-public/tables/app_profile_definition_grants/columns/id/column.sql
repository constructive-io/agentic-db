-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_definition_grants/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_definition_grants 
  DROP COLUMN id RESTRICT;


