-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/prompts/columns/created_at/alterations/alt0000002661


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".prompts 
  ALTER COLUMN created_at DROP NOT NULL;


