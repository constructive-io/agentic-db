-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/content/alterations/alt0000001070


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".memories 
  ALTER COLUMN content DROP NOT NULL;


