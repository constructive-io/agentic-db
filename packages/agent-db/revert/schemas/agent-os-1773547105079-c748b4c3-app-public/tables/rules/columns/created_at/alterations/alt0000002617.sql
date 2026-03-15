-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/created_at/alterations/alt0000002617


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".rules 
  ALTER COLUMN created_at DROP NOT NULL;


