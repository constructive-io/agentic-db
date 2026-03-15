-- Revert: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/app_permissions/columns/bitstr/alterations/alt0000000032


ALTER TABLE "agent-os-1773546821914-39f1cb9b-permissions-public".app_permissions 
  ALTER COLUMN bitstr DROP NOT NULL;


