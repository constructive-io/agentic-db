-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/created_at/alterations/alt0000001447


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".user_settings 
  ALTER COLUMN created_at DROP NOT NULL;


