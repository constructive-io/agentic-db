-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/key/alterations/alt0000003060


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".user_settings 
  ALTER COLUMN key DROP NOT NULL;


