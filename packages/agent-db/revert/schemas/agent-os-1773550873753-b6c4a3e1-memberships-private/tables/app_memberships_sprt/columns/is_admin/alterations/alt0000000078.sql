-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/is_admin/alterations/alt0000000078


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt 
  ALTER COLUMN is_admin DROP NOT NULL;


