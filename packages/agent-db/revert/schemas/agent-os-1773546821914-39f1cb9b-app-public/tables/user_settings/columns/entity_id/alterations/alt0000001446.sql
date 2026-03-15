-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/columns/entity_id/alterations/alt0000001446


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".user_settings 
  ALTER COLUMN entity_id DROP NOT NULL;


