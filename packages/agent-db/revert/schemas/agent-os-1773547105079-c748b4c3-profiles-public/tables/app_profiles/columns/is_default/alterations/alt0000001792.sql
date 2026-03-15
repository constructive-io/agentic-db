-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/app_profiles/columns/is_default/alterations/alt0000001792


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".app_profiles 
  ALTER COLUMN is_default DROP NOT NULL;


