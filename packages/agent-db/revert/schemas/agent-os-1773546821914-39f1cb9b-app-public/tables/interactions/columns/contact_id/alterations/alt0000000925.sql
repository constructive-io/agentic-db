-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/contact_id/alterations/alt0000000925


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  ALTER COLUMN contact_id DROP NOT NULL;


