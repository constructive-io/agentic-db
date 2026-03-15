-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/key/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".user_settings 
  DROP COLUMN key RESTRICT;


