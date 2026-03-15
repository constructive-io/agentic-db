-- Revert: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/role_types/columns/name/alterations/alt0000001569


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".role_types 
  ALTER COLUMN name DROP NOT NULL;


