-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/columns/url/alterations/alt0000000946


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".attachments 
  ALTER COLUMN url DROP NOT NULL;


