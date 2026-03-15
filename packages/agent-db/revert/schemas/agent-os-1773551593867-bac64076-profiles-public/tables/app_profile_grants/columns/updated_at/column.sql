-- Revert: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_grants 
  DROP COLUMN updated_at RESTRICT;


