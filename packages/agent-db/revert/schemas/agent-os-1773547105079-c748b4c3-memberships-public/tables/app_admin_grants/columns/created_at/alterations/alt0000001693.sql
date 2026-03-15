-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/columns/created_at/alterations/alt0000001693


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_admin_grants 
  ALTER COLUMN created_at DROP DEFAULT;


