-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/entity_id/alterations/alt0000001446


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".user_settings 
  ALTER COLUMN entity_id DROP NOT NULL;


