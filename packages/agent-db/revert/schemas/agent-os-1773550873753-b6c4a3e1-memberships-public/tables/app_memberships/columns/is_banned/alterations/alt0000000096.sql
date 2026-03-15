-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/is_banned/alterations/alt0000000096


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships 
  ALTER COLUMN is_banned DROP NOT NULL;


