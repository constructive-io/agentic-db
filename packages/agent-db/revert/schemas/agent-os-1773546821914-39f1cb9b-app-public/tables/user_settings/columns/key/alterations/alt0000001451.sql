-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/columns/key/alterations/alt0000001451


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".user_settings 
  ALTER COLUMN key DROP NOT NULL;


