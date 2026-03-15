-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/entity_id/alterations/alt0000001374


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  ALTER COLUMN entity_id DROP NOT NULL;


