-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/app_memberships_sprt/columns/is_admin/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".app_memberships_sprt 
  DROP COLUMN is_admin RESTRICT;


