-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/constraints/user_settings_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".user_settings 
  DROP CONSTRAINT user_settings_entity_id_fkey;


