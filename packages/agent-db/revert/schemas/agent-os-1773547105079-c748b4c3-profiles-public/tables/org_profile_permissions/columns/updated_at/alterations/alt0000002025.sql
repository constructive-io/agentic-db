-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_permissions/columns/updated_at/alterations/alt0000002025


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_permissions 
  ALTER COLUMN updated_at DROP DEFAULT;


