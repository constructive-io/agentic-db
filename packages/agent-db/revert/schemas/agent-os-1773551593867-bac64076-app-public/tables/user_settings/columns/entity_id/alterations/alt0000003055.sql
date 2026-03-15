-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/entity_id/alterations/alt0000003055


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".user_settings 
  ALTER COLUMN entity_id DROP NOT NULL;


