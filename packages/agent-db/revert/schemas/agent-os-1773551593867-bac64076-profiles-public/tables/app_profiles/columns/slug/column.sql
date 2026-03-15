-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profiles/columns/slug/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profiles 
  DROP COLUMN slug RESTRICT;


