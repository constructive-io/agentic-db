-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/is_admin/alterations/alt0000001672


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
  ALTER COLUMN is_admin DROP NOT NULL;


