-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_grants 
  DROP COLUMN is_grant RESTRICT;


