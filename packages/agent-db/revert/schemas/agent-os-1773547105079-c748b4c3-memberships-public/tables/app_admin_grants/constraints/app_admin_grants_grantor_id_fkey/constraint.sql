-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/constraints/app_admin_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_admin_grants 
  DROP CONSTRAINT app_admin_grants_grantor_id_fkey;


