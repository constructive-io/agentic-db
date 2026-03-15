-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/constraints/app_memberships_profile_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
  DROP CONSTRAINT app_memberships_profile_id_fkey;


