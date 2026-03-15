-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/url/alterations/alt0000000946


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  ALTER COLUMN url DROP NOT NULL;


