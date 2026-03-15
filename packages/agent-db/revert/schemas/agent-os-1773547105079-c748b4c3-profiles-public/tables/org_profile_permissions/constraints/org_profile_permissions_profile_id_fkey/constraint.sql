-- Revert: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_permissions/constraints/org_profile_permissions_profile_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_permissions 
  DROP CONSTRAINT org_profile_permissions_profile_id_fkey;


