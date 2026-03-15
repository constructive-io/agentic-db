-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/permissions/alterations/alt0000000114


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
  ALTER COLUMN permissions DROP NOT NULL;


