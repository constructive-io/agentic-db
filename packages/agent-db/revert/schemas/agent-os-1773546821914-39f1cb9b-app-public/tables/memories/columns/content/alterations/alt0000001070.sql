-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/memories/columns/content/alterations/alt0000001070


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".memories 
  ALTER COLUMN content DROP NOT NULL;


