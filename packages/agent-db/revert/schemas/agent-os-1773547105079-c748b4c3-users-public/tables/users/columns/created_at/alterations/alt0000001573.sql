-- Revert: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/created_at/alterations/alt0000001573


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".users 
  ALTER COLUMN created_at DROP DEFAULT;


