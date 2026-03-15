-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/columns/updated_at/alterations/alt0000001449


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".user_settings 
  ALTER COLUMN updated_at DROP NOT NULL;


