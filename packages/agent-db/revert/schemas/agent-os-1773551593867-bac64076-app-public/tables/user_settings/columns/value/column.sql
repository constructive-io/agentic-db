-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/value/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".user_settings 
  DROP COLUMN value RESTRICT;


