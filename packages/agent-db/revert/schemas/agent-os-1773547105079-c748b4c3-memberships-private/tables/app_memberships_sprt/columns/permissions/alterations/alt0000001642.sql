-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/app_memberships_sprt/columns/permissions/alterations/alt0000001642


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".app_memberships_sprt 
  ALTER COLUMN permissions DROP NOT NULL;


