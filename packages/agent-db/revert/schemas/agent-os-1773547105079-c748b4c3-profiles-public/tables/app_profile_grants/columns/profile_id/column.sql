-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/columns/profile_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_grants 
  DROP COLUMN profile_id RESTRICT;


