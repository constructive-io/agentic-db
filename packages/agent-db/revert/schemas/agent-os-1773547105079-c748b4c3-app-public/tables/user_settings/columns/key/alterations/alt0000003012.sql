-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/key/alterations/alt0000003012


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".user_settings 
  ALTER COLUMN key DROP NOT NULL;


