-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/columns/profile_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_definition_grants 
  DROP COLUMN profile_id RESTRICT;


