-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_membership_defaults/columns/created_at/alterations/alt0000001632


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_membership_defaults 
  ALTER COLUMN created_at DROP DEFAULT;


