-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/columns/updated_at/alterations/alt0000001694


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


