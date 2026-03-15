-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/columns/actor_id/alterations/alt0000001690
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_admin_grants 
  ALTER COLUMN actor_id SET NOT NULL;

