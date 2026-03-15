-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/created_at/alterations/alt0000003107


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".recipes 
  ALTER COLUMN created_at DROP NOT NULL;


