-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/app_permission_defaults/columns/id/alterations/alt0000000039


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".app_permission_defaults 
  ALTER COLUMN id DROP NOT NULL;


