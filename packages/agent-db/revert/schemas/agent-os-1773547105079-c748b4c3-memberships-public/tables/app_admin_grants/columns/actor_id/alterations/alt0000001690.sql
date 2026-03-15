-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/columns/actor_id/alterations/alt0000001690


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_admin_grants 
  ALTER COLUMN actor_id DROP NOT NULL;


