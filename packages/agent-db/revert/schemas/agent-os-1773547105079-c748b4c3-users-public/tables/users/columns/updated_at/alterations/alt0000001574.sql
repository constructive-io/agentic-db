-- Revert: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/updated_at/alterations/alt0000001574


ALTER TABLE "agent-os-1773547105079-c748b4c3-users-public".users 
  ALTER COLUMN updated_at DROP DEFAULT;


