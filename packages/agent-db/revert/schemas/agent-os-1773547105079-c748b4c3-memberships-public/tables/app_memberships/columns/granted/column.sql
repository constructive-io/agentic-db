-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/granted/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
  DROP COLUMN granted RESTRICT;


