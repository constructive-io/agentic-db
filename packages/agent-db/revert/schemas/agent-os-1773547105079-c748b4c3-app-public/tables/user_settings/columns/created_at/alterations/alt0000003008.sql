-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/created_at/alterations/alt0000003008


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".user_settings 
  ALTER COLUMN created_at DROP NOT NULL;


