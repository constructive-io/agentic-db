-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_owner_grants/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_owner_grants 
  DROP COLUMN actor_id RESTRICT;


