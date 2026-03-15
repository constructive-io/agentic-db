-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/key/alterations/alt0000001451


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".user_settings 
  ALTER COLUMN key DROP NOT NULL;


