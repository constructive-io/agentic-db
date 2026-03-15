-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permissions/columns/bitstr/alterations/alt0000000032


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permissions 
  ALTER COLUMN bitstr DROP NOT NULL;


