-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/updated_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".user_settings 
  DROP COLUMN updated_at RESTRICT;


