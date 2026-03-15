-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/created_at/alterations/alt0000001626


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
  ALTER COLUMN created_at DROP DEFAULT;


