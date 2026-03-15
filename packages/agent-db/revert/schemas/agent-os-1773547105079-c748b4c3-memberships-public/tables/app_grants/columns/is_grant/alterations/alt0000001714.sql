-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_grants/columns/is_grant/alterations/alt0000001714


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


