-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_grants/columns/permissions/alterations/alt0000001711


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_grants 
  ALTER COLUMN permissions DROP NOT NULL;


