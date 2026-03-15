-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".user_settings 
  DROP COLUMN id RESTRICT;


