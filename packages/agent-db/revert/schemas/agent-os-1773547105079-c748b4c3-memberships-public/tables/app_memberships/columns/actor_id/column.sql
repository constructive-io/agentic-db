-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
  DROP COLUMN actor_id RESTRICT;


