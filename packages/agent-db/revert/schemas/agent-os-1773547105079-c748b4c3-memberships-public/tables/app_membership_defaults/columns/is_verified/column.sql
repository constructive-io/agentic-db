-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/columns/is_verified/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_membership_defaults 
  DROP COLUMN is_verified RESTRICT;


