-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/type/alterations/alt0000000926


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  ALTER COLUMN type DROP NOT NULL;


