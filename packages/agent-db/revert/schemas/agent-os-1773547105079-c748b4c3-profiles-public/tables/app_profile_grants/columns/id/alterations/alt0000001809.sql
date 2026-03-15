-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profile_grants/columns/id/alterations/alt0000001809


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profile_grants 
  ALTER COLUMN id DROP NOT NULL;


