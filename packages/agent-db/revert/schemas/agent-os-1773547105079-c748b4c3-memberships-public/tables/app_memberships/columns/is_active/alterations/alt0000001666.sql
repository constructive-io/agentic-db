-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/is_active/alterations/alt0000001666


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
  ALTER COLUMN is_active DROP NOT NULL;


